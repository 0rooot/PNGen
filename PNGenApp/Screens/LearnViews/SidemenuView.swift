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
                } label: {Label(LocalizedStringKey("SidemenuView.General"), systemImage: "person")
                }.withSideMenueMainButtonStyle()
                
                Button {
                    selected = .cyberRules
                    showMenu = false
                } label: {Label(LocalizedStringKey("SidemenuView.CyberRules"), systemImage: "lock.circle.fill")
                }.withSideMenueSubButtonStyle()
                
                Button {
                    selected = .connections
                    showMenu = false
                } label: { Label(LocalizedStringKey("SidemenuView.Connections"), systemImage: "envelope")
                }.withSideMenueMainButtonStyle()
                
                Button {
                    selected = .wifi
                    showMenu = false
                } label: { Label(LocalizedStringKey("SidemenuView.WiFi"), systemImage: "wifi.circle.fill")
                }.withSideMenueSubButtonStyle()
                
                Button {
                    selected = .bluetoot
                    showMenu = false
                } label: { Label(LocalizedStringKey("SidemenuView.Bluetooth"), systemImage: "airplayaudio.circle.fill")
                }.withSideMenueSubButtonStyle()
                
                Button {
                    selected = .mobileNetwork
                    showMenu = false
                } label: { Label(LocalizedStringKey("SidemenuView.MobileNetwork"), systemImage: "antenna.radiowaves.left.and.right.circle.fill")
                }.withSideMenueSubButtonStyle()
                
                Button {
                    selected = .settings
                    showMenu = false
                } label: { Label(LocalizedStringKey("SidemenuView.Settings"), systemImage: "gear")
                }.withSideMenueMainButtonStyle()
            }
            .font(.title)
            .padding()
            .frame(maxHeight: .infinity)
            .background(Color("NavBarColor"))
            
            Spacer()
        }
    }
}

extension Button {
    func withSideMenueSubButtonStyle() -> some View {
        self.font(.title2)
            .padding(.leading, 40)
    }
    func withSideMenueMainButtonStyle() -> some View {
        self.font(.title)
    }
}
