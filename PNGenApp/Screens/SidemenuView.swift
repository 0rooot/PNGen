//
//  SidemenuView.swift
//  PNGen
//
//  Created by Thomas Arnold on 24.03.22.
//

import SwiftUI

struct SidemenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Group {
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("General")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 100)
                HStack {
                    Text("Jailbrake")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
                HStack {
                    Text("Applications")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
            }
            
            Group {
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("Connections")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 20)
                HStack {
                    Text("WiFi")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
                HStack {
                    Text("Bluetooth")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
                HStack {
                    Text("Mobile Network")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)

            }
            
            Group {
                HStack {
                    Image(systemName: "gear")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    Text("Settings")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 20)
                HStack {
                    Text("Permissions")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
                HStack {
                    Text("Kamera / Mic")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
                HStack {
                    Text("Photos")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding(.top, 10)
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SidemenuView_Previews: PreviewProvider {
    static var previews: some View {
        SidemenuView()
    }
}
