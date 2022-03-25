//
//  MobileNetworkLearnVIew.swift
//  PNGen
//
//  Created by Thomas Arnold on 25.03.22.
//

import SwiftUI

struct MobileNetworkLearnView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        HStack{
            Spacer()
            ScrollView{
                VStack(alignment: .leading) {
                    Text("Mobile Network Security")
                        .font(.title.bold())
                    Text("Phishing-Attacken, Verschlüsselung von Daten durch Fremde oder Datenklau: Das sind Beispiele jener Bedrohungen, die ständig im Cyber-Raum lauern. Auch die Schweiz ist nicht von Cyber-Angriffen verschont. Um ihre Einsatzfähigkeit und Handlungsfreiheit jederzeit und in allen Lagen sicherzustellen, erstellt die Armee permanent das Cyber-Lagebild und ist in der Lage, Cyber-Angriffe zu detektieren und diese abzuwehren." )
                        .font(.subheadline)
                    Group{
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+1").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Äusserungen in Sozialen Medien sind immer als öffentlich anzusehen." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+2").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Niemals fremde oder private USB-Geräte an Systeme der Armee oder der Verwaltung anschliessen." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                    }
                    Text("Alle Erklärvideos können hier angeschaut werden." )
                        .font(.subheadline)
                    Link("Cyber Defence Rules - Admin.ch", destination: URL(string: "https://www.vtg.admin.ch/de/aktuell/themen/cyberdefence/cyber-security.html#18_1621347327946")!).foregroundColor(.red)
                }
            }
            Spacer()
        }
        
    }
}

