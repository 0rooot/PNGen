//
//  SidemenuView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var showMenu: Bool
    @Binding var selected: SelectedScreen
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 30) {
                Button {
                    selected = .general
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.General"), systemImage: "person")
                }.font(.title)
                
                Button {
                    selected = .cyberRules
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.CyberRules"), systemImage: "circle")
                }
                .font(.title2)
                .padding(.leading, 40)
                
                Button {
                    selected = .connections
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.Connections"), systemImage: "envelope")
                }.font(.title)
                
                Button {
                    selected = .wifi
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.WiFi"), systemImage: "circle")
                }
                .font(.title2)
                .padding(.leading, 40)
                
                Button {
                    selected = .bluetoot
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.Bluetooth"), systemImage: "circle")
                }
                .font(.title2)
                .padding(.leading, 40)
                
                Button {
                    selected = .mobileNetwork
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.MobileNetwork"), systemImage: "circle")
                }
                .font(.title2)
                .padding(.leading, 40)
                
                Button {
                    selected = .settings
                    showMenu = false
                } label: {
                    Label(LocalizedStringKey("SidemenuView.Settings"), systemImage: "gear")
                }.font(.title)
            }
            .font(.title)
            .padding()
            .frame(maxHeight: .infinity)
            .background(Color("NavBarColor"))
            
            Spacer()
        }
    }
}
