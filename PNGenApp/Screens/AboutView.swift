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
                Text(LocalizedStringKey("AboutView.Impressum.Software")).withAboutViewBodyStyle()
                Text(LocalizedStringKey("AboutView.Impressum.Client")).withAboutViewBodyStyle()
                Text(LocalizedStringKey("AboutView.Impressum.Body")).withAboutViewBodyStyle()
                Divider().background(Color.accentColor).frame(maxWidth: 200)
                VStack() {
                    Image("HSLU").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading], 10).background(.white)
                    Image("SchweizerischeEidgenossenschaft").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading, .bottom], 10).clipped().background(.white)
                }
                //Spacer()
                Group{
                    Text(LocalizedStringKey("AboutView.Feedback.Title")).withAboutViewTitleStyle()
                    Text(LocalizedStringKey("AboutView.Feedback.Body")).withAboutViewBodyStyle()
                Text("pngen@gmx.ch")
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                }
                Spacer()
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
