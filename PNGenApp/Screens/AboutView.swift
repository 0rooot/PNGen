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
                Text(LocalizedStringKey("AboutView.Impressum.Title"))
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text(LocalizedStringKey("AboutView.Impressum.Software"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 5)
                Text(LocalizedStringKey("AboutView.Impressum.Client"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 5)
                Text(LocalizedStringKey("AboutView.Impressum.Body"))
                    .font(.body.italic())
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                VStack() {
                    Image("HSLU").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading], 10).background(.white)
                    Image("SchweizerischeEidgenossenschaft").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading, .bottom], 10).clipped().background(.white)
                }
                //Spacer()
                Group{
                    Text(LocalizedStringKey("AboutView.Feedback.Title"))
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                    Text(LocalizedStringKey("AboutView.Feedback.Body"))
                    .font(.body.italic())
                    .lineSpacing(10)
                    .padding(.bottom, 10)
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

