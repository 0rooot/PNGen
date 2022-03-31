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
            VStack(alignment: .leading) {
                Spacer()
                Text("About me:")
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
                    Image("HSLU").clipped()
                    Image("SchweizerischeEidgenossenschaft").clipped()
                }
                Spacer()
                Text("Feedback & Reports:")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text("Email: pngen@gmx.ch" )
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                Spacer()
            }
            Spacer()
        }
        
    }}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

