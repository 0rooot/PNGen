//
//  ContentView.swift
//  PNGen
//
//  Created by taaarth2 on 11.02.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //defines the bottom Navigation Tabs
        TabView {
            PinkNoiseView()
                .tabItem {
                    Image(systemName: "iphone.radiowaves.left.and.right")
                    Text(LocalizedStringKey("NavBar.Main"))
                }
            SetupView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text(LocalizedStringKey("NavBar.Setup"))
                }
            LearnView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text(LocalizedStringKey("NavBar.Learn"))
                }
            AboutView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text(LocalizedStringKey("NavBar.About"))
                }
        }.onAppear(){
            playNoiseIfAutoStart() //plays the noise if the autostart setting is set from the user
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 mini")
                .preferredColorScheme(.dark)
        }
    }
}
