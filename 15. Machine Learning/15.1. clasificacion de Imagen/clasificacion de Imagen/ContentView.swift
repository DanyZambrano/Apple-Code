
import SwiftUI

struct ContentView: View {
    var objetos = [
        Objetos(imagen: "car",
                identificador: "...",
                confidence: "..."),
        
        Objetos(imagen: "banana",
                identificador: "...",
                confidence: "..."),
        
        Objetos(imagen: "apple",
                identificador: "...",
                confidence: "..."),
        
        Objetos(imagen: "dog",
                identificador: "...",
                confidence: "..."),
        
        Objetos(imagen: "cat",
                identificador: "...",
                confidence: "..."),
    ]
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                   Group {
                       ForEach(objetos.indices, id: \.self) { index in
                           CardView(objeto: objetos[index])
                       }
                   }
               }
       }
    }
}

#Preview {
    ContentView()
}
