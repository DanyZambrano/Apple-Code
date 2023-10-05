
import SwiftUI



struct ContentView: View {
    
    
    var pokemones = [
        Pokemon(imagen: "Pikachu",
                titulo: "Pikachu",
                descripcion: "Pokémon de tipo eléctrico introducido en la primera generación."),
        
        Pokemon(imagen: "Charmander",
                titulo: "Charmander",
                descripcion: "Charmander es un pequeño monstruo bípedo parecido a un lagarto."),
        
        Pokemon(imagen: "Eevee",
                titulo: "Eevee",
                descripcion: "Es la mascota principal y Pokémon inicial en el juego Pokémon: Let's Go."),
        
        Pokemon(imagen: "Bulbasaur",
                titulo: "Bulbasaur",
                descripcion: "Bulbasaur es un Pokémon de tipo planta/veneno introducido en la primera generación."),
        
        Pokemon(imagen: "Snorlax",
                titulo: "Snorlax",
                descripcion: "Snorlax es un Pokémon de Nintendo y de la franquicia de Pokémon Game Freak.")
    ]
    
    
    var body: some View {
        
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        ForEach(pokemones.indices, id: \.self) { index in
                            CardView(pokemon: pokemones[index])
                        }
                    }
                    .frame(width: 250)
                }
            }
        }
        
    }
}




#Preview {
    ContentView()
}
