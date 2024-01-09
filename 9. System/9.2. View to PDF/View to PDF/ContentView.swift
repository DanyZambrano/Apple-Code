
import SwiftUI
import Charts

struct ContentView: View {
    
    let grafico = Grafico()
    
    
    //Funcion de Conversion a PDF
    @MainActor
    private func convertPDF() {
        guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        
        let renderedUrl = documentDirectory.appending(path: "grafico.pdf")
        
        if let consumer = CGDataConsumer(url: renderedUrl as CFURL),
           let pdfContext = CGContext(consumer: consumer, mediaBox: nil, nil) {
            
            let renderer = ImageRenderer(content: grafico)
            renderer.render { size, renderer in
                let options: [CFString: Any] = [
                    kCGPDFContextMediaBox: CGRect(origin: .zero, size: size)
                ]
                
                pdfContext.beginPDFPage(options as CFDictionary)
                pdfContext.translateBy(x: 0, y: 200)
                
                renderer(pdfContext)
                pdfContext.endPDFPage()
                pdfContext.closePDF()
            }
        }
      
        print("Guardando PDF:  \(renderedUrl.path())")
    }
    
    
    

    var body: some View {
        
        VStack(spacing: 30) {
            
            grafico
            
            //Generar PDF
            Button(action: {
                convertPDF()
            }) {
                Text("Generar PDF")
                    .padding()
                    .border(Color.blue)
            }
        }
    }
  
}


//Grafico
struct Grafico: View {
    
    let chartData = [ (year: "2022", data: Gastos2022),
                      (year: "2023", data: Gastos2023)]
    
    var body: some View {
        
        Text("Análisis de Gastos")
            .font(.system(size: 30))
        

            Chart {
                ForEach(chartData, id: \.year) { series in
                    ForEach(series.data) { item in
                        LineMark(
                            x: .value("Month", item.mes),
                            y: .value("Temp", item.monto)
                        )
                    }
                    .foregroundStyle(by: .value("year", series.year))
                    .symbol(by: .value("year", series.year))
                }
            }
            .frame(width: 350, height: 300)
            .padding(.horizontal)

    }
}




#Preview {
    ContentView()
}
