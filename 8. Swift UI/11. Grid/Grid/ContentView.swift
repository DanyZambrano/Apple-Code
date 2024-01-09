
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Grid {
            
            GridRow {
                Text("1")
                    .font(.system(.largeTitle))
                Text("2")
                    .font(.system(.largeTitle))
                Text("3")
                    .font(.system(.largeTitle))
            }
            
            GridRow {
                Color.blue
                Color.orange
                Color.red
            }
            
            GridRow {
                Image(systemName: "lightbulb.fill")
                    .font(.system(size: 100))
                Image(systemName: "square.and.arrow.up.circle")
                    .font(.system(size: 100))
                Image(systemName: "pencil.and.outline")
                    .font(.system(size: 100))
            }
            
            GridRow {
                Color.blue
                Text("2")
                    .font(.system(.largeTitle))
                Image(systemName: "pencil.and.outline")
                    .font(.system(size: 100))
            }
            
            GridRow {
                Button("Eliminar") {
                    print("La accion es Eliminar")
                }
                
                Button(action: {
                    print("El Mensaje es >> Hola Mundo!")
                }) {
                    Image(systemName: "camera.circle.fill")
                        .font(.system(size: 100))
                }
                
                Button {
                    print("El Mensaje es >> Hola Mundo!")
                } label: {
                    Text("Ok!")
                        .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                }
            }
           
        }
        
    }
}



#Preview {
    ContentView()
}
