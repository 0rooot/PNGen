//
//  InformationView.swift
//  PNGen
//
//  Created by Main Developer on 05.03.22.
//

import SwiftUI

struct LearnView: View {
    
    @State var showMenu = false
    @State var selected: SelectedScreen = .general
    @State var LearnViewNavigationBarTitle: LocalizedStringKey =  "NavigationBarTitle.Learn"
    @AppStorage("firstStartLearnView") var firstStartLearnView: Bool = true
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation { self.showMenu = false }
                } else {
                    withAnimation { self.showMenu = true }
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
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .cyberRules:
                        CyberRulesLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .connections:
                        ConnectionsLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .wifi:
                        WiFiLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .bluetoot:
                        BluetoothLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    case .mobileNetwork:
                        MobileNetworkLearnView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/1.2 : 0)
                            .disabled(self.showMenu ? true : false)
                    }
                    if self.showMenu {
                        SideMenuView(showMenu: $showMenu, selected: $selected)
                            .transition(.move(edge: .leading))
                            .frame(width: geometry.size.width)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle(LearnViewNavigationBarTitle, displayMode: .inline)
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
        }.navigationViewStyle(StackNavigationViewStyle())
            .alert(isPresented: $firstStartLearnView) { Alert(
            title: Text(LocalizedStringKey("LearnView.SideMenue.Popup.Title")),
            message: Text(LocalizedStringKey("LearnView.SideMenue.Popup.Body")),
            dismissButton: .default(Text("OK")))}
    }
}

public enum SelectedScreen {
    case general
    case cyberRules
    case connections
    case wifi
    case bluetoot
    case mobileNetwork
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
