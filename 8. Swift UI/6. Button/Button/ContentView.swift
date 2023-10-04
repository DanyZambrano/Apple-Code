
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
        /*
             Button("Eliminar") {
                 print("La accion es Eliminar")
             }
        */

        /*
            Button("Eliminar", role: .destructive) {
                print("Eliminar")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button("Salir", role: .cancel) {
                print("Salir")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        */
            
            
        /*
            Button {                     // Accion
                print("El Mensaje es >> Hola Mundo!")
            } label: {                   // Descripcion
                Text("Generar Mensaje")
            }
        */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                Text("Generar Mensaje")
                    .padding()
                    .background(Color(red: 4.0/255, green: 59.0/255, blue: 92.0/255))
                    .foregroundColor(.white)
                    .font(.title)
            }
        */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                Text("Generar Mensaje")
                    .foregroundColor(Color.gray)
                    .font(.title)
                    .padding()
                    .border(Color.gray, width: 5)
            }
        */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                Text("Generar Mensaje")
                    .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
            }
        */
            
            
        /*
            Button(action: {
                print("El Mensaje es >> Hola Mundo!")
            }) {
                Image(systemName: "camera.circle.fill")
                    .font(.system(size: 100))
            }
            
        */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .font(.title)
                    Text("Foto")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(30)
            }
            
         */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .font(.title)
                    Text("Foto")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(
                                                colors: [Color.blue, Color.green]),
                                                startPoint: .leading,
                                                endPoint: .trailing))
                .cornerRadius(30)
            }
        */
            
        /*
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .font(.title)
                    Text("Foto")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(
                                                colors: [Color.blue, Color.green]),
                                                startPoint: .leading,
                                                endPoint: .trailing))
                .cornerRadius(30)
            }
            .buttonStyle(ScaleButtonStyle())
        */
            
        /*
            VStack {
                Button(action: {}) {
                    Text("Comprar")
                        .font(.headline)
                        .frame(maxWidth: 100)
                }
                Button(action: {}) {
                    Text("Agendar")
                        .font(.headline)
                        .frame(maxWidth: 300)
                }
                Button(action: {}) {
                    Text("Eliminar")
                        .font(.headline)
                        .frame(maxWidth: 300)
                }
            }
            .tint(.gray)
            .buttonStyle(.bordered)
            .controlSize(.large)
        */
            
            
            
            Button {
                print("El Mensaje es >> Hola Mundo!")
            } label: {
                Text("Generar Mensaje")
                    .padding()
                    .background(Color(red: 4.0/255, green: 59.0/255, blue: 92.0/255))
                    .foregroundColor(.white)
                    .font(.title)
            }
            .contextMenu(menuItems: {
                Button(action: {
                    print("Comprar!")
                }) {
                     HStack {
                        Text("Comprar")
                        Image(systemName: "ticket.fill")
                    }
                }
                Button(action: {
                    print("Favorito!")
               }) {
                    HStack {
                        Text("Favorito?")
                        Image(systemName: "hand.thumbsup")
                    }
               }
            })
            
            
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 2 : 1)
    }
}



/*



*/
