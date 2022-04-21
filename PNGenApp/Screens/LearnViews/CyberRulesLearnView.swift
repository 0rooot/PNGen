//
//  CyberRulesLearnView.swift
//  PNGen
//
//  Created by Thomas Arnold on 25.03.22.
//

import SwiftUI

struct CyberRulesLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            Spacer()
            ScrollView{
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("LearnView.CyberRules.Title"))
                        .font(.largeTitle)
                    Text(LocalizedStringKey("LearnView.CyberRules.Body"))
                        .font(.body)
                    Group{
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+1").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule1"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+2").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule2"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+3").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule3"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+4").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule4"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+5").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule5"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+6").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule6"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+7").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text(LocalizedStringKey("LearnView.CyberRules.Rule7"))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.body)
                                }
                            }
                        }
                    }
                    Text(LocalizedStringKey("LearnView.CyberRules.VideoHint"))
                        .font(.subheadline)
                    Link("Cyber Defence Rules - Admin.ch", destination: URL(string: "https://www.vtg.admin.ch/de/aktuell/themen/cyberdefence/cyber-security.html#18_1621347327946")!).foregroundColor(.red)
                }
            }
            Spacer()
        }
        
    }
}
