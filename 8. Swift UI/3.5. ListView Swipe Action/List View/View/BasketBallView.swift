
import SwiftUI

struct BasketBallView: View {
    
    @State var equipos = [
        Equipos(name: "Cocodrilos", image: "Cocodrilos", location: "Caracas", isFavorite: true),
        Equipos(name: "Bucaneros", image: "Bucaneros", location: "La Guaira", isFavorite: false),
        Equipos(name: "Gaiteros", image: "Gaiteros", location: "El Zulia", isFavorite: false),
        Equipos(name: "Guaiqueríes", image: "Guaiqueríes", location: "Margarita", isFavorite: false),
        Equipos(name: "Guaros", image: "Guaros", location: "Lara", isFavorite: false),
        Equipos(name: "Marineros", image: "Marineros", location: "Anzoategui", isFavorite: false),
        Equipos(name: "Panteras", image: "Panteras", location: "Miranda", isFavorite: false),
        Equipos(name: "Trotamundos", image: "Trotamundos", location: "Carabobo", isFavorite: false)
    ]
    
    var body: some View {
        List {
            ForEach(equipos.indices, id: \.self) { index in
                ListItem(equipo: $equipos[index])
                    .swipeActions(edge: .leading, allowsFullSwipe: false, content: {
                        Button { /* accion */ }
                            label: { Image(systemName: "ticket.fill")  }
                                .tint(.blue)
                        Button { /* accion */ }
                            label: { Image(systemName: "dollarsign.circle.fill") }
                                .tint(.gray)
                    })
            }
            .onDelete(perform: { indexSet in
                equipos.remove(atOffsets: indexSet)
            })
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct ListItem: View {

    @Binding var equipo: Equipos
    @State private var dialog = false
    @State private var alerta = false
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image(equipo.name)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text(equipo.image)
                    .font(.system(.title, design: .rounded))
                
                Text(equipo.location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.gray)
            }
            
            if equipo.isFavorite {
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
        .onTapGesture {
            dialog.toggle()
         }
        .confirmationDialog("Selecciona una acción", isPresented: $dialog, titleVisibility: .visible) {
            
            Button("Comprar ticket") {
                alerta.toggle()
            }
            Button("Es Equipo Favorito?") {
                self.equipo.isFavorite.toggle()
            }
        }
        .alert("Aviso Importante", isPresented: $alerta) {
           Button("Entiendo") { }
           } message: {
               Text("No hay Tickets disponibles!")
           }
    }
}


struct BasketBallView_Previews: PreviewProvider {
    static var previews: some View {
        BasketBallView()
        
        BasketBallView()
            .preferredColorScheme(.dark)
            .previewDisplayName("List View (Dark)")
    }
}
