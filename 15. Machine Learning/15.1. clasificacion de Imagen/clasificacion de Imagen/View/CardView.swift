import SwiftUI
import CoreML
import Vision

struct CardView: View {
    
    var objeto: Objetos
    @State var image: UIImage = UIImage(named: "car")!
    @State private var identificador = ""
    @State private var confidence = ""
    
    func setupModel(myImage: String) {
        guard let imagePath = Bundle.main.path(forResource: myImage, ofType: "jpg") else {
            print("Error al cargar la Imagen.")
            return
        }
        let imageURL = NSURL.fileURL(withPath: imagePath)
       
        let modelFile = try? SqueezeNet(configuration: MLModelConfiguration())
        let model = try! VNCoreMLModel(for: modelFile!.model)
        let handler = VNImageRequestHandler(url: imageURL)

        let request = VNCoreMLRequest(model: model, completionHandler: modelResults)
        try! handler.perform([request])
    }
    
    func modelResults(request: VNRequest, error: Error?) {
        guard let results = request.results as? [VNClassificationObservation] else {
            fatalError("No hay Resultados!")
        }

        var valorConfidence: VNConfidence = 0
        
        for classification in results {
            print(classification.confidence, classification.identifier)
            if (classification.confidence > valorConfidence) {
                valorConfidence = classification.confidence
                identificador = classification.identifier
            }
        }
        
        confidence = String(format: "%.2f", (valorConfidence * 100)) + " %"
    }
    
    
    
    var body: some View {
        VStack {
            Image(objeto.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(identificador)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(confidence)
                        .font(.title)
                        .fontWeight(.black)
                        .lineLimit(4)
                        .minimumScaleFactor(0.6)
                }
                Spacer()
                Button {
                    setupModel(myImage: objeto.imagen)
                } label: {
                    Text("Analizar")
                }
            }
            .padding()
        }
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color(.sRGB, red: 163/255, green: 160/255, blue: 169/255, opacity: 0.1), lineWidth: 4)
        )
        .padding([.top, .horizontal])
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let objeto = Objetos(imagen: "car",
                                identificador: "...",
                                confidence: "...")
        
        CardView(objeto: objeto)
    }
}
