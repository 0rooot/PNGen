//
//  FeedbackView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
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
    }
}
