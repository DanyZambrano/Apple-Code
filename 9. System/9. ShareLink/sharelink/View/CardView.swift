import SwiftUI

struct CardView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Image(pokemon.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(pokemon.titulo)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(pokemon.descripcion)
                        .font(.title)
                        .fontWeight(.black)
                        .lineLimit(4)
                        .minimumScaleFactor(0.6)
                        
                }
                
            }
            .padding()
            
            ShareLink(
                item: Image(pokemon.imagen),
                subject: Text(pokemon.titulo),
                message: Text("Para mas informacion vista www.google.com"),
                preview:
                    SharePreview(
                        Text(pokemon.descripcion),
                        image: Image(pokemon.imagen)))
            
            .padding(10)
            
        }
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color(.sRGB, red: 163/255, green: 160/255, blue: 169/255, opacity: 0.1), lineWidth: 4)
        )
        .padding([.top, .horizontal])
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let pokemon = Pokemon(imagen: "Pikachu",
                                titulo: "Pikachu",
                                descripcion: "Pokémon de tipo eléctrico introducido en la primera generación.")
        
        CardView(pokemon: pokemon)
    }
}
