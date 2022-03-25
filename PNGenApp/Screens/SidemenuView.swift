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
            VStack(alignment: .leading, spacing: 24) {
                Button {
                    selected = .general
                    showMenu = false
                } label: {
                    Label("General", systemImage: "person")
                }
                
                Button {
                    selected = .cyberRules
                    showMenu = false
                } label: {
                    Label("Cyber Rules", systemImage: "Circle")
                }
                
                Button {
                    selected = .connections
                    showMenu = false
                } label: {
                    Label("Connections", systemImage: "envelope")
                }
                
                Button {
                    selected = .wifi
                    showMenu = false
                } label: {
                    Label("WiFi", systemImage: "Circle")
                }
                
                Button {
                    selected = .bluetoot
                    showMenu = false
                } label: {
                    Label("Bluetooth", systemImage: "Circle")
                }
                
                Button {
                    selected = .mobileNetwork
                    showMenu = false
                } label: {
                    Label("Mobile Network", systemImage: "Circle")
                }
                
                Button {
                    selected = .settings
                    showMenu = false
                } label: {
                    Label("Settings", systemImage: "gear")
                }
            }
            .padding()
            .frame(maxHeight: .infinity)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            
            Spacer()
        }
    }
}
