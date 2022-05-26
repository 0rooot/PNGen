//
//  SetupView.swift
//  PNGen
//
//  Created by Main Developer on 01.05.22.
//

import SwiftUI

struct SetupView: View {
    
    @State var SetupViewNavigationBarTitle: LocalizedStringKey =  "NavigationBarTitle.Setup"
    
    var body: some View {
        return NavigationView {
            HStack{
                ScrollView{
                    VStack(alignment: .leading) {
                        //How to use the Noise App
                        ManualView()
                        Spacer()
                        //More info about the noise and glass and auto_start
                        InfoView()
                        Spacer()
                    }
                }.navigationBarTitle(SetupViewNavigationBarTitle, displayMode: .inline)
                    .navigationBarItems(leading: (
                        Image("schweizer_wappen")
                    ))
            }.padding([.leading, .trailing], 20)
        }
    }
}

struct SetupView_Previews: PreviewProvider {
    static var previews: some View {
        SetupView()
    }
}
