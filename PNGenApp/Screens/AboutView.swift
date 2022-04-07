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
                Text("Impressum:")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text("Developer: T. A." )
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 5)
                Text("Auftraggeber: T. B." )
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 5)
                Text("Diese Applikation wurde im Rahmen einer Bachelorarbeit des Studiums Information and Cyber Security an der Hochschule Luzern (HSLU) realisiert im Auftrag der Cyberdefense der Schweizer Armee" )
                    .font(.body.italic())
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                VStack() {
                    Image("HSLU").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading], 10).background(.white)
                    Image("SchweizerischeEidgenossenschaft").resizable().aspectRatio(contentMode: .fit).padding([.top, .leading, .bottom], 10).clipped().background(.white)
                }
                //Spacer()
                Group{
                Text("Feedback & Reports:")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text("Verbesserungsvorschläge und Fehler dürfen gerne an folgende Email Adresse gemeldet werden:" )
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

