//
//  SourceCodeView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI

struct SourceCodeView: View {
    var body: some View {
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
    }
}
