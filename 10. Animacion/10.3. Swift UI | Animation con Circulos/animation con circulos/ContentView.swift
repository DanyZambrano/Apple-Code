
import SwiftUI

struct ContentView: View {
    
    @State private var accion = false
    
    var body: some View {
        
        VStack {
            HStack {
                ForEach(0...3, id: \.self) { index in
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                        .scaleEffect(self.accion ? 0 : 1)
                        .animation(.linear(duration: 0.9).repeatForever().delay(0.3 * Double(index)), value: accion)
                }
            }
            
            Button(accion ? "" : "play" ) {
                self.accion = true
            }
        }
        
    }
}

#Preview {
    ContentView()
}
