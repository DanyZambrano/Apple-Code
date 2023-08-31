

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("*En la primavera de mi juventud* era mi destino [buscar](https://www.google.com) un lugar del ancho mundo que no pudiera amar menos, tan hermosa era la soledad del apartado lago, rodeado de negras rocas, y **altos pinos** que se elevaban alrededor.")
            .font(.system(.title3))
            .lineSpacing(10)
            .padding(15)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
