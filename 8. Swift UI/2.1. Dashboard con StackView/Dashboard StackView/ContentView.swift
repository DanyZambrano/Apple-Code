
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            TitleView(texto: "Tienda Virtual")
            
            HStack {
                
                ModuloView(titulo: "Elect", contenido: "Equipos de Compu.", monto: "$10", colorTexto: .white, backgroundColor: .black)
                
                ModuloView(titulo: "Ropa", contenido: "Articulos de Dama", monto: "$20", colorTexto: .blue, backgroundColor: Color(red: 227/255, green: 186/255, blue: 143/255))
            }
            .padding(.horizontal)
            
            VStack {
                
                HStack {
                    ModuloView(titulo: "Zapatos", contenido: "Bossi", monto: "$1", colorTexto: .white, backgroundColor: Color(red: 207/255, green: 47/255, blue: 116/255), icono: "shoeprints.fill")
                    
                    ModuloView(titulo: "Juegos", contenido: "PS5", monto: "$25", colorTexto: .white, backgroundColor: Color(red: 4/255, green: 59/255, blue: 92/255), icono: "flag.2.crossed")
                    
                }
                .padding(.horizontal)
            }
            
            ZStack {
                
                ModuloView(titulo: "Hogar", contenido: "Articulos de Dama", monto: "$20", colorTexto: .white, backgroundColor: Color(red: 163/255, green: 160/255, blue: 169/255), icono: "scribble")
                
                Text("20% descuento")
                .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(.red)
                    .offset(x: 0, y: 100)
            }
            .padding(.horizontal)
        }
    }
}



struct TitleView: View {
    
    var texto: String
    
    var body: some View {

        Text(texto)
            .font(.system(.title, design: .rounded))
            .fontWeight(.black)
    }
}


struct ModuloView: View {
    
    var titulo: String
    var contenido: String
    var monto: String
    var colorTexto: Color
    var backgroundColor: Color
    var icono: String?
    
    
    var body: some View {
        
        VStack {
            
            if let icon = icono {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(colorTexto)
            }
            
            Text(titulo)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(monto)
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(colorTexto)
            Text(contenido)
                .font(.headline)
                .foregroundColor(colorTexto)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 110)
        .padding(35)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
