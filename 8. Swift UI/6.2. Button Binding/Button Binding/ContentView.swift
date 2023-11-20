
import SwiftUI

struct ContentView: View {
    @State private var contadorDecimal = 0
    @State private var contadorUnidad = 0
    
    var body: some View {
        VStack {
            HStack {
                ContadorButton(contador: $contadorDecimal)
                ContadorButton(contador: $contadorUnidad)
            }
        }
    }
}



struct ContadorButton: View {
    @Binding var contador: Int
    
    var body: some View {
        Button {
            contador += 1
        } label: {
            Circle()
                .frame(width: 100, height: 100)
                .overlay {
                    Text("\(contador)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
        }
    }
}



#Preview {
    ContentView()
}
