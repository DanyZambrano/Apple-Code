import SwiftUI

struct ContentView: View {
    
    @State var pokemonSeleccionado: Pokemones?
    
    var body: some View {
        
        VStack {
            // Navigation Stack es para presentar un stack de vistas sobre la vista Raiz
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
}
