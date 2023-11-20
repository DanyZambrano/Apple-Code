
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TrashButton()
        
    }
}


struct TrashButton: View {
    @State private var borrar = true
    
    var body: some View {
        Button {
            borrar.toggle()
        } label: {
            Image(systemName: borrar ? "trash.fill" : "trash.slash")
                .font(.system(size: 150))
                .foregroundColor(borrar ? .red : .blue)
        }
    }
}



#Preview {
    ContentView()
}
