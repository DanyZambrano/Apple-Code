//
//  ContentView.swift
//  Animacion
//
//  Created by Dany Zambrano on 19/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorValue = true
    @State private var sizeValue = true
    
    var body: some View {
        Image(systemName: "lightbulb.fill")
            .font(.system(size: 150))
            .foregroundColor(colorValue ? .black : .red)
            .scaleEffect(sizeValue ? 1 : 2)
            .animation(.easeInOut(duration: 0.5), value: true)
            .onTapGesture {
                self.colorValue.toggle()
            }
            .onLongPressGesture {
                self.sizeValue.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
