
import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    var pokemon: Pokemones

    var body: some View {
  
        ScrollView {
            VStack(alignment: .leading) {
                Image(pokemon.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Group {
                    Text(pokemon.titulo)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(pokemon.contenido)
                    .font(.body)
                    .padding()
                    .lineLimit(500)
                    .multilineTextAlignment(.leading)
            }
        }
        .overlay(
            HStack {
                Spacer()
                
                VStack {
                    Button {                 
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                    
                    Spacer()
                }
            }
        )
        
    }
}

#Preview {
    DetailView(pokemon: pokemones[0])
}
