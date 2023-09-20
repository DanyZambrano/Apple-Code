
import SwiftUI

struct ContentView: View {
    var body: some View {

        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Text("Quien te vio en aquel día nupcial, cuando aquel profundo rubor te cubriera, aunque la felicidad a tu alrededor se extendiera y todo el mundo fuera amor ante ti.")
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(.headline))
                    .background(Color.black)
                    .opacity(0.7),
                alignment: .top
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

