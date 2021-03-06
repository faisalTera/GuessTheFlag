//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Faisal Babkoor on 2/22/20.
//  Copyright © 2020 Faisal Babkoor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    
    var correctAnswer = Int.random(in: 0...2)
    
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
        VStack (spacing: 30){
            VStack {
                Text("Tap the flag of")    .foregroundColor(.white)

                Text(self.countries[self.correctAnswer])    .foregroundColor(.white)

            }
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        // flag was tapped
                    }) {
                        Image(self.countries[number].lowercased())
                            .renderingMode(.original)
                }
            }
            Spacer()

        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
