//
//  PrivacyDisclaimerView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI

struct PrivacyDisclaimerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Group{
                Text(LocalizedStringKey("AboutView.AGB.Title")).withAboutViewTitleStyle()
                Text(LocalizedStringKey("AboutView.AGB.Body")).withAboutViewBodyStyle()
            }
        }
        Spacer(minLength: 20)
        HStack(alignment: .center){
            Link(destination: URL(string: "https://www.admin.ch/gov/de/start/rechtliches.html")!, label: {
                Text("Rechtliches admin.ch")
                    .bold()
                    .frame(width: UIScreen.main.bounds.size.width/1.6, height: 50)
                    .foregroundColor(Color(UIColor.systemBackground))
                    .accentColor(Color(UIColor.systemBackground))
                    .background(Color(UIColor.label))
                    .cornerRadius(15)
                    .lineLimit(1)
                    .minimumScaleFactor(0.01)})
        }
        Spacer(minLength: 20)
        Spacer(minLength: 50)
        VStack(alignment: .leading) {
            Group{
                Text(LocalizedStringKey("AboutView.Privacy.Title")).withAboutViewTitleStyle()
                Text(LocalizedStringKey("AboutView.Privacy.Body")).withAboutViewBodyStyle()
            }
        }
    }
}
