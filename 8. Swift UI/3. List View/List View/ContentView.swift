//
//  ContentView.swift
//  List View
//
//  Created by Dany Zambrano on 18/8/23.
//

import SwiftUI

var equipos = ["Cocodrilos de Caracas", "Bucaneros de La Guaira", "Broncos de Caracas", "Gaiteros del Zulia", "Guaiqueríes de Margarita", "Guaros de Lara", "Marineros de Anzoategui", "Panteras de Miranda", "Trotamundos de Carabobo"]

struct ContentView: View {
    var body: some View {
        List {
            ForEach(equipos, id: \.self) { equipo in
                
                VStack(alignment: .leading, spacing: 10) {
                    Image(equipo)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .cornerRadius(15)
                    
                    Text(equipo)
                        .font(.system(.title2, design: .rounded))
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .preferredColorScheme(.dark)
            .previewDisplayName("List View (Dark)")
    }
}