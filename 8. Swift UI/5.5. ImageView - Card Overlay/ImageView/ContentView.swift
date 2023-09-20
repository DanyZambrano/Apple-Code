
import SwiftUI

struct ContentView: View {
    var body: some View {

        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                Text("Michi")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    .offset(x:40, y:-280)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
