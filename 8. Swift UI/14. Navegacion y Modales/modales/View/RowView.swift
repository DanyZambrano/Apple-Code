import SwiftUI

struct PokemonRow: View {
    var pokemon: Pokemones
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(pokemon.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(6)
            
            HStack(spacing: 4) {
                Text(pokemon.titulo)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .lineLimit(4)
                    .padding(.trailing, 15)
                
                ForEach(1...(pokemon.power), id: \.self) { _ in
                    Image(systemName: "bolt.fill")
                        .font(.caption)
                        .foregroundColor(.green)
                }
            }
               
            
            Text(pokemon.resumen)
                .foregroundColor(.secondary)
            
        }
    }
}

