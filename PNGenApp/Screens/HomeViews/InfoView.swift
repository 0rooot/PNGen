//
//  InfoView.swift
//  PNGen
//
//  Created by Thomas Arnold on 08.04.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Spacer()
                Group{
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Title")).withTitleStyle()
                    VStack(alignment: .leading) {
                        HStack{Text("1").withRuleNumberingStyle()
                            Image("Start_Button_White").withInfoViewImageStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step1")).withStepStyle()
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack{Text("2").withRuleNumberingStyle()
                            Image("Einmachglas_Manor").withInfoViewImageStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step2")).withStepStyle()
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack{Text("3").withRuleNumberingStyle()
                            Image("Sprechen2").withInfoViewImageStyle()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step3")).withStepStyle()
                            }
                        }
                    }
                }
                Group{
                    Spacer()
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.FurtherInfos.Title")).withTitleStyle()
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Body")).withQuestionBodyStyle()
                        Divider().background(Color.accentColor).frame(maxWidth: 200)
                    }
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Body")).withQuestionBodyStyle()
                        Divider().background(Color.accentColor).frame(maxWidth: 200)
                    }
                    Spacer()
                    Group {
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Title")).withQuestionTitleStyle()
                        Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Body")).withQuestionBodyStyle()
                        GeometryReader { geometry in
                            HStack{
                                
                                Link(destination: URL(string: "https://produkte.migros.ch/bormioli-rocco-einmachglas-fido-703723200000")!, label: {
                                    Text("Migros")
                                        .bold()
                                        .frame(minWidth: 0, maxWidth: geometry.size.width/3, minHeight: 50)
                                        .foregroundColor(Color(UIColor.systemBackground))
                                        .background(Color(UIColor.label))
                                        .cornerRadius(15)
                                })
                                Link(destination: URL(string: "https://www.galaxus.ch/de/s2/product/bormioli-rocco-fido-1-stk-3-l-einmachglas-3510678")!, label: {
                                    Text("Galaxus")
                                        .bold()
                                        .frame(minWidth: 0, maxWidth: geometry.size.width/3, minHeight: 50)
                                        .foregroundColor(Color(UIColor.systemBackground))
                                        .background(Color(UIColor.label))
                                        .cornerRadius(15)
                                })
                                Link(destination: URL(string: "https://www.manor.ch/de/p/p0-33862006")!, label: {
                                    Text("Manor")
                                        .bold()
                                        .frame(minWidth: 0, maxWidth: geometry.size.width/3, minHeight: 50)
                                        .foregroundColor(Color(UIColor.systemBackground))
                                        .background(Color(UIColor.label))
                                        .cornerRadius(15)
                                })
                                
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding(20)
        }
    }
}

extension Text {
    func withStepStyle() -> some View {
        self.fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: .infinity, alignment: .top)
            .font(.body)
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
}

extension Image {
    func withInfoViewImageStyle() -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
    }
}
