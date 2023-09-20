
import SwiftUI

struct ContentView: View {
    var body: some View {

        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                Image(systemName: "lightbulb.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.yellow)
                    .opacity(0.7)
                    .offset(x: 10,y: -280)
            )
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
