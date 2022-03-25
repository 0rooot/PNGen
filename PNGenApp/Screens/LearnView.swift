//
//  InformationView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI

struct LearnView: View {
    
    @State var showMenu = false
    @State var selected: SelectedScreen = .general
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    // show selected screen
                    switch selected {
                    case .general:
                        GeneralLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .cyberRules:
                        CyberRulesLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .connections:
                        ConnectionsLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .settings:
                        SettingsLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                    }
                        if self.showMenu {
                            SideMenuView(showMenu: $showMenu, selected: $selected)
                                .transition(.move(edge: .leading))
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                    }
                        .gesture(drag)
                }
                .navigationBarTitle("Learn Center", displayMode: .inline)
                .navigationBarItems(leading: (
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                ))
            }
        }
    }
    
    public enum SelectedScreen {
        case general
        case cyberRules
        case connections
        case settings
    }
    
    struct InformationView_Previews: PreviewProvider {
        static var previews: some View {
            LearnView()
        }
    }
    
    
    




