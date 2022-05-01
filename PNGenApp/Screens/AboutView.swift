//
//  AboutView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        HStack{
            ScrollView{
                VStack(alignment: .leading) {
                    Spacer()
                    Text(LocalizedStringKey("AboutView.Impressum.Title")).withAboutViewTitleStyle()
                    Text(LocalizedStringKey("AboutView.Impressum.Body")).withAboutViewBodyStyle()
                    Spacer()
                    HStack() {
                        Image("HSLU").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading], 10).background(.white).border(Color.black)
                        Image("SchweizerischeEidgenossenschaft").resizable().aspectRatio(contentMode: .fit).padding( 16).clipped().background(.white).border(Color.black)
                    }
                    //Spacer()
                    Group{
                        Text(LocalizedStringKey("AboutView.Feedback.Title")).withAboutViewTitleStyle()
                        Text(LocalizedStringKey("AboutView.Feedback.Body")).withAboutViewBodyStyle()
                    }
                    Spacer()
                }
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
                Spacer()
            }
        }
        .padding(20)
    }}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .preferredColorScheme(.light)
    }
}

extension Text {
    func withAboutViewTitleStyle() -> some View {
        self.font(.largeTitle)
            .padding(.bottom, 20)
    }
    func withAboutViewBodyStyle() -> some View {
        self.font(.body)
            .lineSpacing(10)
            .padding(.bottom, 5)
    }
    
}
