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
                    Text("7 Cyber Regeln der Armee")
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
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+3").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Öffentliche Hotspots können schädlich sein. Ein Hotspot Ihres eigenen Handys ist sicherer." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+4").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("WLAN, Bluetooth, GPS, NFC, etc. sind deaktiviert, ausser sie werden bewusst benötigt." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+5").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Handys, Uhren und Notebooks sind potentielle Wanzen. Vor vertraulichen oder geheimen Gesprächen diese Geräte wegschliessen." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+6").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Keine Mitteilungen/Anhänge/Links unerwarteter Herkunft öffnen. Kontaktieren Sie bei Verdacht den Absender telefonisch." )
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        .font(.system(size: 14.0))
                                }
                            }
                        }
                        VStack(alignment: .leading) {
                            HStack{Image("image.CyD+Regel+7").resizable().scaledToFill().frame(width: 100, height: 100).clipped()
                                VStack{Text("Trennen Sie bei Verdacht auf Malware-Infektion schnellstmöglich die Netzverbindung, lassen Sie das Gerät laufen und melden Sie Ihren Verdacht der Hotline und Ihrem Vorgesetzten." )
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
