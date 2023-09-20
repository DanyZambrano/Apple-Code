
import SwiftUI

struct ContentView: View {
    var body: some View {
        /*Image("cat")
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()*/
                            
        /*Image("cat")
            .resizable()
            .scaledToFit()*/
        
        /*Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fit)*/
        
        /*Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400)*/
        
        /*Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350)
            .clipped()*/
        
        /*Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350)
            .clipShape(Circle())*/
        
        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350)
            .opacity(0.6)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
