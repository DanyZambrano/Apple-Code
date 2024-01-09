
import SwiftUI

struct ContentView: View {
    
    @State private var color = false
    @State private var tamaño = false
    
    var body: some View {
        
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(color ? .white : .gray)
            
            Image(systemName: "light.beacon.min.fill")
                .foregroundColor(color ? .yellow : .white)
                .font(.system(size: 200))
                .scaleEffect(tamaño ? 1.0 : 0.5)
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.4)) {
                self.color.toggle()
                self.tamaño.toggle()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
