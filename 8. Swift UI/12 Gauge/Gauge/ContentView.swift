
import SwiftUI

struct ContentView: View {
    
    @State private var progreso = 0.45
    var pInicial = 0
    var pFinal = 100
    
    @State private var archivos = 300.0
    var aInicial = 0.0
    var aFinal = 500.0

    var body: some View {

        VStack {
            
            // Gauge #1
            Gauge(value: progreso) {
                Text("Indicador Progreso")
            } currentValueLabel: {
                Text(progreso.formatted(.percent))
            } minimumValueLabel: {
                Text(pInicial.formatted(.percent))
            } maximumValueLabel: {
                Text(pFinal.formatted(.percent))
            }
            
            Spacer()
            
            // Gauge #2
            Gauge(value: archivos, in: aInicial...aFinal) {
                Text("Carga de Archivos")
            } currentValueLabel: {
                Text("Archivos cargados (\(archivos.formatted(.number)))")
            } minimumValueLabel: {
                Text(aInicial.formatted(.number))
            } maximumValueLabel: {
                Text(aFinal.formatted(.number))
            }
            .tint(.indigo)
            
            
            Spacer()
            
            // Gauge #3
            Gauge(value: archivos, in: aInicial...aFinal) {
                Text("Carga de Archivos")
            } currentValueLabel: {
                Text("Archivos cargados (\(archivos.formatted(.number)))")
            } minimumValueLabel: {
                Image(systemName: "folder")
            } maximumValueLabel: {
                Image(systemName: "folder.fill")
            }
            .tint(.cyan)
            
            Spacer()
            
            
            // Gauge #4
            Gauge(value: archivos, in: aInicial...aFinal) {
                Text("Carga de Archivos")
            } currentValueLabel: {
                Text("Archivos cargados (\(archivos.formatted(.number)))")
            } minimumValueLabel: {
                Image(systemName: "folder")
            } maximumValueLabel: {
                Image(systemName: "folder.fill")
            }
            .tint(.blue)
            .gaugeStyle(AccessoryLinearGaugeStyle())
            
            
            Spacer()
            
            
            // Gauge #5
            Gauge(value: archivos, in: aInicial...aFinal) {
                Text("Carga de Archivos")
            } currentValueLabel: {
                Text("Archivos cargados (\(archivos.formatted(.number)))")
            } minimumValueLabel: {
                Image(systemName: "folder")
            } maximumValueLabel: {
                Image(systemName: "folder.fill")
            }
            .tint(.blue)
            .gaugeStyle(AccessoryLinearCapacityGaugeStyle())
            
            
            Spacer()
            
            
            // Gauge #6
            Gauge(value: archivos, in: aInicial...aFinal) {
            } currentValueLabel: {
                Text("Archivos")
            } minimumValueLabel: {
                Text(aInicial.formatted(.number))
            } maximumValueLabel: {
                Text(aFinal.formatted(.number))
            }
            .tint(.blue)
            .gaugeStyle(AccessoryCircularGaugeStyle())
            
            
            Spacer()
            
            
            // Gauge #7
            Gauge(value: archivos, in: aInicial...aFinal) {
                Text("Carga de Archivos")
            } currentValueLabel: {
                Text("Archivos (\(archivos.formatted(.number)))")
            } minimumValueLabel: {
                Text(aInicial.formatted(.number))
            } maximumValueLabel: {
                Text(aFinal.formatted(.number))
            }
            .tint(.red)
            .gaugeStyle(AccessoryCircularCapacityGaugeStyle())
            
            
            
            
        }.padding(20)
        
    }
}

#Preview {
    ContentView()
}
