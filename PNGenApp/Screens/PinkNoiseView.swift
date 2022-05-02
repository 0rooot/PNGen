//
//  PinkNoiseView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI
import AudioToolbox
import MediaPlayer

struct PinkNoiseView: View {
    
    @State var lang = "DE"
    @State private var showingInformationPopover = false
    @State var HomeViewNavigationBarTitle: LocalizedStringKey =  "NavigationBarTitle.Home"
    @AppStorage("firstStart") var firstStart: Bool = true
    
    var body: some View {
        return NavigationView {
            GeometryReader { geometry in
                VStack {
                    ButtonView()
                        .frame(width: geometry.size.width, height: geometry.size.height/2)
                    
                    HintView()
                        .frame(width: geometry.size.width/1.1, height: geometry.size.height/2)
                }
            }
            .navigationBarTitle(HomeViewNavigationBarTitle, displayMode: .inline)
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        showingInformationPopover = true
                    }
                }) {
                    Image(systemName: "questionmark.circle")
                        .imageScale(.large)
                }
                    .popover(isPresented: $showingInformationPopover) {
                        InfoView()
                    }
            )
            )
        }.navigationViewStyle(StackNavigationViewStyle())
            .onAppear {
                if firstStart {
                    showingInformationPopover = firstStart
                    firstStart = false
                }
            }
    }
}

struct PinkNoiseView_Previews: PreviewProvider {
    static var previews: some View {
        PinkNoiseView()
    }
}
