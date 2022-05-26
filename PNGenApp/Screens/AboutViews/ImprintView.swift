//
//  ImprintView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI

struct ImprintView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(LocalizedStringKey("AboutView.Impressum.Title")).withAboutViewMainTitleStyle()
            Text(LocalizedStringKey("AboutView.Impressum.Body")).withAboutViewBodyStyle()
            Spacer()
            HStack() {
                //When pressing on the pictures, the user gets to the webpages of the according organisation.
                Button(action: {
                    guard let hslu = URL(string: "https://www.hslu.ch/de-ch/informatik/studium/bachelor/information-and-cyber-security/"),
                          UIApplication.shared.canOpenURL(hslu) else {
                        return
                    }
                    UIApplication.shared.open(hslu,
                                              options: [:],
                                              completionHandler: nil)
                }) {
                    Image("HSLU").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading], 10).background(.white).border(Color.black)
                }
                Button(action: {
                    guard let cyberdefence = URL(string: "https://www.cyberdefence.ch/"),
                          UIApplication.shared.canOpenURL(cyberdefence) else {
                        return
                    }
                    UIApplication.shared.open(cyberdefence,
                                              options: [:],
                                              completionHandler: nil)
                }) {
                    Image("SchweizerischeEidgenossenschaft").resizable().aspectRatio(contentMode: .fit).padding( 16).clipped().background(.white).border(Color.black)
                }
            }
            Spacer(minLength: 50)
        }
        // Address for the Impressum
        VStack(alignment: .leading) {
            Text("Führungsunterstützungsbasis der Armee FUB")
            Text("Cyber Security")
            Text("Stauffacherstrasse 65")
            Text("CH-3003 Bern")
        }
    }
}
