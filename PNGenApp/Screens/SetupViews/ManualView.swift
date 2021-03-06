//
//  ManualView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI

struct ManualView: View {
    var body: some View {
            VStack(alignment: .leading) {
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Title")).withTitleStyle()
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            Image("Anleitung_1").withInfoViewImageStyle()
                            Text("1").withRuleNumberingStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step1")).withStepStyle()
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            Image("Anleitung_2").withInfoViewImageStyle()
                            Text("2").withRuleNumberingStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step2")).withStepStyle()
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            Image("Anleitung_3").withInfoViewImageStyle()
                            Text("3").withRuleNumberingStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step3")).withStepStyle()
                            }
                        }
                    }
            }
    }
}

//defines default Text styles to reuse
extension Text {
    func withStepStyle() -> some View {
        self.fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: .infinity, alignment: .top)
            .font(.body)
            .lineLimit(6)
            .minimumScaleFactor(0.01)
    }
    
    func withTitleStyle() -> some View {
        self.font(.largeTitle)
            .padding(.bottom, 20)
    }
    
    func withQuestionTitleStyle() -> some View {
        self.font(.title2)
            .foregroundColor(.accentColor)
            .padding(.bottom, 5)
    }
    
    func withQuestionBodyStyle() -> some View {
        self.font(.body)
            .lineSpacing(10)
            .padding(.bottom, 20)
    }
    
    func withInfoButtonTextStyle() -> some View {
        self.bold()
            .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.size.width/3, minHeight: 50)
            .foregroundColor(Color(UIColor.systemBackground))
            .background(Color(UIColor.label))
            .cornerRadius(15)
            .lineLimit(1)
            .minimumScaleFactor(0.01)
        
    }
}

//defines default Image styles to reuse
extension Image {
    func withInfoViewImageStyle() -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
            .border(Color.black)
    }
}
