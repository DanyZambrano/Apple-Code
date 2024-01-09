import SwiftUI
import Charts

struct ContentView: View {
    
    let chartData = [ (year: "2022", data: Gastos2022),
                      (year: "2023", data: Gastos2023)]

    var body: some View {
        
        VStack {
            Chart {
                ForEach(Gastos2022) { item in
                    LineMark(
                        x: .value("Mes", item.mes),
                        y: .value("Monto", item.monto)
                    )
                }
            }
            .frame(height: 300)
            .chartPlotStyle { plotArea in
                plotArea
            }
            .background(.gray.opacity(0.1))
        }
        .padding(20)
    }
}


struct Grafico2: View {
    
    let chartData = [ (year: "2022", data: Gastos2022),
                      (year: "2023", data: Gastos2023)]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(chartData, id: \.year) { series in
                    ForEach(series.data) { item in
                        LineMark(
                            x: .value("Month", item.mes),
                            y: .value("Temp", item.monto)
                        )
                    }
                    .foregroundStyle(by: .value("year", series.year))
                }
            }
            .frame(height: 300)
        }
        .padding(20)
    }
    
}


struct Grafico3: View {
    let chartData = [ (year: "2022", data: Gastos2022),
                      (year: "2023", data: Gastos2023)]
    
    var body: some View {
        VStack {
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
            .frame(height: 300)
        }
        .padding(20)
    }
    
}


struct Grafico4: View {
    let chartData = [ (year: "2022", data: Gastos2022),
                      (year: "2023", data: Gastos2023)]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(chartData, id: \.year) { series in
                    ForEach(series.data) { item in
                        LineMark(
                            x: .value("Month", item.mes),
                            y: .value("Temp", item.monto)
                        )
                        .interpolationMethod(.stepStart)
                    }
                    .foregroundStyle(by: .value("year", series.year))
                    .symbol(by: .value("year", series.year))
                    
                }
            }
            .frame(height: 300)
        }
        .padding(20)
    }
    
}


#Preview("Grafico1") {
    ContentView()
}

#Preview("Grafico2") {
    Grafico2()
}

#Preview("Grafico3") {
    Grafico3()
}

#Preview("Grafico4") {
    Grafico4()
}

