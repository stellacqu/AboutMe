//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

extension Color {
    static let sandy = Color("sandy")
}

struct ContentView: View {
    static let sandy = Color("sandy")
    static let brown = Color("brown")
    static let forest = Color("forest")
    @State private var fact = ""
    var facts = ["I'm a wannabe granola girl", "I love national parks (I've been to over 5)", "I'm not a coding person (#humanities)", "Country music has grown on me...Zach Bryan", "I've climbed Half Dome before!"]
    var body: some View {
        ZStack {
            Color(.init(srgbRed: 0.82745, green: 0.8, blue: 0.61176, alpha: 1))
                            .ignoresSafeArea()

            VStack {
                Image("trees2")
                Text("Stella Qu")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.brown)
                    .padding(.bottom, 1.0)
                Text("Hi, Welcome to my About Me Page!")
                    .foregroundColor(Color("forest"))
                
                Button("Facts About Me"){
                    let rand = Int.random(in: 0..<5)
                        fact = (facts[rand])
                }
                .padding(.top, 2.0)
                Text("\(fact)")
                    .font(.body)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 3.0)
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.brown)
                    
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
