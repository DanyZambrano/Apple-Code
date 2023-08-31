

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("En la primavera de mi juventud era mi destino buscar un lugar del ancho mundo que no pudiera amar menos, tan hermosa era la soledad del apartado lago, rodeado de negras rocas, y altos pinos que se elevaban alrededor.")
            .font(.system(.title, design: .monospaced))
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .lineLimit(5)
            .truncationMode(.head)
            .lineSpacing(10)
            .padding(15)
            .rotationEffect(.degrees(20))
            .rotation3DEffect(.degrees(20), axis: (x: 1, y: 0, z: 0))
            .shadow(color: .black, radius: 3, x: 0, y: 8)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
