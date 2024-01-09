
import SwiftUI

struct Circulos: View {
    var body: some View {
        
        Circle()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
        
        
        Circle()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
            .overlay(
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Circle()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                            )
                    )
            )
        
        
        Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(0
            ), endAngle: .degrees(90), clockwise: true)
        }
        .fill(.blue)
 
        
    }
}

#Preview {
    Circulos()
}
