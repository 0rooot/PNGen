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
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(LocalizedStringKey("AboutView.Impressum.Title")).withAboutViewMainTitleStyle()
                        Text(LocalizedStringKey("AboutView.Impressum.Body")).withAboutViewBodyStyle()
                        Spacer()
                        HStack() {
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
                    VStack(alignment: .leading) {
                        Text(LocalizedStringKey("AboutView.Code.Title")).withAboutViewTitleStyle()
                        Text(LocalizedStringKey("AboutView.Code.Body")).withAboutViewBodyStyle()
                    }
                    Spacer(minLength: 20)
                    HStack(alignment: .center){
                        Link(destination: URL(string: "https://github.com/0rooot/PNGen/")!, label: {
                            Text("PNGen Github")
                                .bold()
                                .frame(width: UIScreen.main.bounds.size.width/1.6, height: 50)
                                .foregroundColor(Color(UIColor.systemBackground))
                                .accentColor(Color(UIColor.systemBackground))
                                .background(Color(UIColor.label))
                                .cornerRadius(15)
                                .lineLimit(1)
                            .minimumScaleFactor(0.01)})
                    }
                    Spacer(minLength: 50)
                    VStack(alignment: .leading) {
                        Text(LocalizedStringKey("AboutView.Feedback.Title")).withAboutViewTitleStyle()
                        Text(LocalizedStringKey("AboutView.Feedback.Body")).withAboutViewBodyStyle()
                    }
                    Spacer(minLength: 20)
                    HStack(alignment: .center){
                        Link(destination: URL(string: "mailto:pngen@gmx.ch")!, label: {
                            Text("Email: pngen@gmx.ch")
                                .bold()
                                .frame(width: UIScreen.main.bounds.size.width/1.6, height: 50)
                                .foregroundColor(Color(UIColor.systemBackground))
                                .accentColor(Color(UIColor.systemBackground))
                                .background(Color(UIColor.label))
                                .cornerRadius(15)
                                .lineLimit(1)
                                .minimumScaleFactor(0.01)
                        })
                    }
                    Group{
                        Spacer(minLength: 50)
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
                }.navigationBarTitle(AboutViewNavigationBarTitle, displayMode: .inline)
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
