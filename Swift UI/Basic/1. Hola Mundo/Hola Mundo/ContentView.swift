//
//  ContentView.swift
//  Hola Mundo
//
//  Created by Dany E Zambrano S on 28/11/22.
//

// List of AVSpeechSynthesisVoice.speechVoices() on iOS Device
// https://gist.github.com/Koze/d1de49c24fc28375a9e314c72f7fdae4

 
import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let mySynthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            
            Button {
                hablar(text: "Hola Mundo")
            } label: {
                Text("Hola, Mundo!")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(18)
            
        }
    }
    
    func hablar(text: String)
    {
        let entrada = AVSpeechUtterance(string: text)
        entrada.voice = AVSpeechSynthesisVoice(language: "es-ES")
        
        mySynthesizer.speak(entrada)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
