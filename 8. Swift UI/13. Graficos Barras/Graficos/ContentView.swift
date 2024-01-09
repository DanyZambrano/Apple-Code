import SwiftUI
import Charts

struct ContentView: View {
    
    let meses = ["Enero", "Febrero", "Marzo", "Abril", "Junio", "Julio"]
    let gastos = [ 500, 800, 600, 1000, 400, 100, 700 ]
    
    var body: some View {
        
        VStack {
            
            Chart {
                ForEach(meses.indices, id: \.self) { index in
                    BarMark(
                        x: .value("Meses", meses[index]),
                        y: .value("Gastos", gastos[index])
                    )
                    .foregroundStyle(by: .value("Meses", meses[index]))
                    .annotation {
                        Text("\(gastos[index])")
                    }
                }
            }
            
        }
        .padding(20)
    }
}


struct ContentView2: View {
    
    let meses = ["Enero", "Febrero", "Marzo", "Abril", "Junio", "Julio"]
    let gastos = [ 500, 800, 600, 1000, 400, 100, 700 ]
    
    var body: some View {
        
        VStack {
            
            Chart {
                ForEach(meses.indices, id: \.self) { index in
                    BarMark(
                        x: .value("Gastos", gastos[index]),
                        y: .value("Meses", meses[index])
                    )
                    .foregroundStyle(by: .value("Meses", meses[index]))
                    .annotation {
                        Text("\(gastos[index])")
                    }
                }
            }
            
        }
        .padding(20)
    }
}



#Preview ("Chart 1") {
    ContentView()
}

#Preview ("Chart 2") {
    ContentView2()
}


