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
        Spacer(minLength: 50)
        VStack(alignment: .leading) {
            Group{
                Text(LocalizedStringKey("AboutView.Privacy.Title")).withAboutViewTitleStyle()
                Text(LocalizedStringKey("AboutView.Privacy.Body")).withAboutViewBodyStyle()
            }
        }
    }
}
