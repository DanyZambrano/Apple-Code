//
//  ContentView.swift
//  Stacks View
//
//  Created by Dany Zambrano on 16/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var orientacion
    
    var body: some View {
        VStack(spacing: 15) {
            VStack {
                
                Text("Venta de Autos")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                
                Text("Las Mejores Marcas")
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("car0")
                    .resizable()
                    .scaledToFit()
                
                Image("car2")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 15)
            
            Spacer()
            
            if orientacion == .compact {
                HorizontalView()
            } else {
                VerticalView()
            }
        }.padding(.top, 20)
    }
}


struct HorizontalView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Login")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Registro")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }

    }
}


struct VerticalView: View {
    var body: some View {

        VStack {
            Button {
                
            } label: {
                Text("Login")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Registro")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro (Portrait)")
        
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
            .previewDisplayName("iPhone 14 Pro (Landscape)")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}




