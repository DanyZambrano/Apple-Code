//
//  ContentView.swift
//  ListWithSections
//
//  Created by Dany E Zambrano S on 10/10/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
            List {
                Section(header: Text("North America")){
                    Text("USA")
                    Text("Canada")
                    Text("Mexico")
                    Text("Panama")
                    Text("Anguila")
                }
                Section(header: Text("Africa")){
                    Text("Nigeria")
                    Text("Ghana")
                    Text("Kenya")
                    Text("Senegal")
                }
                Section(header: Text("Europe")){
                    Text("Spain")
                    Text("France")
                    Text("Sweden")
                    Text("Finland")
                    Text("UK")
                }
            }
        .listStyle(GroupedListStyle())
            .navigationBarTitle("Continents and Countries", displayMode: .inline)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
