
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Grafico #1
        ZStack {
            Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(0), endAngle: .degrees(190), clockwise: true)
                }
                .fill(.blue)
            
            Path { path in
                   path.move(to: CGPoint(x: 187, y: 187))
                   path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(90), endAngle: .degrees(360), clockwise: true)
               }
               .fill(.red)
            
            Path { path in
                   path.move(to: CGPoint(x: 187, y: 187))
                   path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(110), endAngle: .degrees(90), clockwise: true)
               }
               .fill(.yellow)
            
            Path { path in
                 path.move(to: CGPoint(x: 187, y: 187))
                 path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(190), endAngle: .degrees(110), clockwise: true)
             }
             .fill(.green)
        }
        
        // Grafico #2
        ZStack {
            Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(0), endAngle: .degrees(190), clockwise: true)
                }
                .fill(.blue)
                .offset(x: 10, y: -20)
            
            Path { path in
                   path.move(to: CGPoint(x: 187, y: 187))
                   path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(90), endAngle: .degrees(360), clockwise: true)
               }
               .fill(.red)
               .offset(x: 20, y: 20)
            
            Path { path in
                   path.move(to: CGPoint(x: 187, y: 187))
                   path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(110), endAngle: .degrees(90), clockwise: true)
               }
               .fill(.yellow)
            
            Path { path in
                 path.move(to: CGPoint(x: 187, y: 187))
                 path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(190), endAngle: .degrees(110), clockwise: true)
             }
             .fill(.green)
             .offset(x: -10, y: 5)
            
        }
        
    }
}

#Preview {
    ContentView()
}
