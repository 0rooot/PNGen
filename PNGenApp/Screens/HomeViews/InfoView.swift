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
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Title"))
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    VStack(alignment: .leading) {
                        HStack{Image("Start_Button_White").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step1"))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(maxHeight: .infinity, alignment: .top)
                                    .font(.body)
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack{Image("Einmachglas_Manor").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step2"))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(maxHeight: .infinity, alignment: .top)
                                    .font(.body)
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        HStack{Image("Sprechen2").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                            VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step3"))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(maxHeight: .infinity, alignment: .top)
                                    .font(.body)
                            }
                        }
                    }
                }
                Spacer()
                Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.FurtherInfos.Title"))
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Spacer()
                Group {
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Title"))
                        .font(.title2)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 5)
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(.bottom, 20)
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                }
                Spacer()
                Group {
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Title"))
                        .font(.title2)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 5)
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Autostart.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(.bottom, 20)
                    Divider().background(Color.accentColor).frame(maxWidth: 200)
                }
                Spacer()
                Group {
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Title"))
                        .font(.title2)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 5)
                    Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.Jar.Body"))
                        .font(.body)
                        .lineSpacing(10)
                        .padding(.bottom, 20)
                    GeometryReader { geometry in
                        HStack{
                            Link("Migros", destination: URL(string: "https://produkte.migros.ch/bormioli-rocco-einmachglas-fido-703723200000")!).foregroundColor(.red).frame(minWidth: 0, maxWidth: geometry.size.width/3)
                            Link("Galaxus", destination: URL(string: "https://www.galaxus.ch/de/s2/product/bormioli-rocco-fido-1-stk-3-l-einmachglas-3510678")!).foregroundColor(.red).frame(minWidth: 0, maxWidth: geometry.size.width/3)
                            Link("Manor", destination: URL(string: "https://www.manor.ch/de/p/p0-33862006")!).foregroundColor(.red).frame(minWidth: 0, maxWidth: geometry.size.width/3)
                        }
                    }
                }
            }
            .padding(20)
        }
    }
}

