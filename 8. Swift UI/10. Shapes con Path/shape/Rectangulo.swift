
import SwiftUI

struct Rectangulo: View {
    
    var body: some View {
        
        Path() { path in
                    path.move(to: CGPoint(x: 50, y: 50))
                    path.addLine(to: CGPoint(x: 350, y: 50))
                    path.addLine(to: CGPoint(x: 350, y: 250))
                    path.addLine(to: CGPoint(x: 50, y: 250))
                }
                .fill(.blue)
        
        Path() { path in
                    path.move(to: CGPoint(x: 20, y: 20))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 20), control: CGPoint(x: 250/2, y: -(250 * 0.1)))
                    path.addRect(CGRect(x: 20, y: 20, width: 250, height: 50))
                }
                .fill(.blue)
                
      
    }
    
}

#Preview {
    Rectangulo()
}
