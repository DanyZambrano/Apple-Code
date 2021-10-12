//
//  ContentView.swift
//  CustomRowsApp
//
//  Created by Dany E Zambrano S on 8/10/21.
//

import SwiftUI


struct ContentView: View {

        var body: some View {
          
            List {
                ForEach(weatherData){ weather in
                    WeatherRow(weather: weather)
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
