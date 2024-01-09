
import SwiftUI

struct ContentView: View {
    
    private var customGradient = AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center)
    
    let progress: Float = 0.99
    
    
    var body: some View {
        
        ZStack {   
            
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 10)
                .frame(width: 250, height: 250)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress))
                .stroke(customGradient, lineWidth: 10)
                .frame(width: 250, height: 250)
                .overlay {
                    VStack {
                        Text(String(Int(progress * 100)) + "%")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(.gray)
                        Text("Cargando..")
                            .font(.system(.body, design: .rounded))
                            .bold()
                            .foregroundColor(.gray)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
