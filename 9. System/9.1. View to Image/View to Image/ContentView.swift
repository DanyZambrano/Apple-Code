
import SwiftUI
import Charts

struct ContentView: View {
    
    let grafico = Grafico()
    
    var body: some View {
        VStack {
            
            grafico
        
            //Salvar Imagen
            Button(action: {
                let renderer = ImageRenderer(content: grafico)
                if let image = renderer.uiImage {
                    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                }
            }) {
                Text("Salvar Imagen")
                    .padding()
                    .border(Color.blue)
            }
            
        }
        .padding()
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
