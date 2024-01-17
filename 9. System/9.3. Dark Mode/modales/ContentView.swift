import SwiftUI

struct ContentView: View {
    
    @State var pokemonSeleccionado: Pokemones?
    
    var body: some View {
        VStack {
            NavigationStack {
                List(pokemones) { pokemon in
                    PokemonRow(pokemon: pokemon)
                        .onTapGesture {
                            self.pokemonSeleccionado = pokemon
                        }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                
                .sheet(item: $pokemonSeleccionado) { pokemon in
                    DetailView(pokemon: pokemon)
                }
                
                .navigationTitle("Pokemones")
            }
       }
    }
}


#Preview {
    ContentView()
    /* Group {
        ContentView().colorScheme(.dark)
        ContentView().colorScheme(.light)
    } */
}
