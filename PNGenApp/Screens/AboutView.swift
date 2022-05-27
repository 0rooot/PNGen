//
//  AboutView.swift
//  PNGen
//
//  Created by Main Developer on 05.03.22.
//

import SwiftUI

struct AboutView: View {
    
    @State var AboutViewNavigationBarTitle: LocalizedStringKey =  "NavigationBarTitle.About"
    
    var body: some View {
        return NavigationView {
            HStack{
                ScrollView{
                    ImprintView()
                    Spacer(minLength: 50)
                    PrivacyDisclaimerView()
                    Spacer(minLength: 50)
                    FeedbackView()
                    Spacer(minLength: 50)
                    SourceCodeView()
                }.navigationBarTitle(AboutViewNavigationBarTitle, displayMode: .inline)
                    .navigationBarItems(leading: (
                        Image("schweizer_wappen")
                    ))
            }.padding([.leading, .trailing], 20)
        }
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .preferredColorScheme(.light)
    }
}

//defines default Text styles to reuse
extension Text {
    func withAboutViewMainTitleStyle() -> some View {
        self.font(.largeTitle)
            .padding(.bottom, 15)
    }
    func withAboutViewTitleStyle() -> some View {
        self.font(.title)
            .padding(.bottom, 15)
    }
    func withAboutViewBodyStyle() -> some View {
        self.font(.body)
            .lineSpacing(10)
            .padding(.bottom, 5)
    }
    
}
