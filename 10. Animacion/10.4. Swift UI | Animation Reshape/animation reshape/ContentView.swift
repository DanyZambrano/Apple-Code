
import SwiftUI

struct ContentView: View {
    
    @State private var enviando = false
    @State private var envio = false
    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: enviando ? 30 : 10)
                .frame(width: enviando ? 60 : 300, height: 60)
                .foregroundColor(.blue)
                .overlay(
                    Image(systemName: "paperplane")
                        .font(.system(.title))
                        .foregroundColor(.white)
                )
            
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.enviando.toggle()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
