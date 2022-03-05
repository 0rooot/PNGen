//
//  ContentView.swift
//  PNGen
//
//  Created by taaarth2 on 11.02.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           Text("Pink Noise Generator")
             .tabItem {
                Image(systemName: "iphone.radiowaves.left.and.right")
                Text("Pink Noise")
                 PinkNoiseView()
              }
            Text("Informationen")
              .tabItem {
                 Image(systemName: "book.fill")
                 Text("Learn")
               }
            Text("About")
              .tabItem {
                 Image(systemName: "person.fill")
                 Text("About")
               }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 mini")
                .preferredColorScheme(.light)
        }
    }
}
