//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Román Santiago on 08/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var followers = 3000
    var body: some View {
        HStack {
            ZStack {
                Image("")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100,
                           height: 100)
                    .clipShape(.circle)
                    .shadow(radius: 1)
                .overlay(){
                    Color.white
                        .clipShape(.circle)
                        .shadow(radius: 30)
                }
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90,
                           height: 90)
                    .clipShape(.circle)
                    .shadow(radius: 20)
            }
            
            
            VStack{
                Text("Laurita ")
                    .font(.system(size: 26,
                                  weight: .regular,
                                  design: .rounded))
                Text("")
                    .font(.body)
                    .fontDesign(.rounded)
                    .foregroundStyle(.secondary)
                    .lineSpacing(1.0)
                    .hoverEffect(.highlight)
                Text("Ingeniera, apasionada por el anime")
                    .font(.body)
                    .fontDesign(.rounded)
                    .foregroundStyle(.secondary)
                    .lineSpacing(1.0)
                
                Button("Follow") {
                    print("+1 Follower")
                    followers += 1
                    
                }
                .buttonStyle(.borderedProminent)
                Text(" \(followers)  followers")
                    .shadow(radius: 30)

            
        }}
        .padding()
    }
}

#Preview {
    ContentView()
}
