//
//  PinkNoiseView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI

struct PinkNoiseView: View {
    
    var body: some View {
        VStack {
            Button(action: {
                print("Start Pink Noise Now!")
                playPinkNoise(key: "PINKNoise", format: "mp3")
            }){
                Text("Start Pink Noise")
                    .bold()
                    .frame(width: 200, height: 150)
                    .clipShape(Circle())
            }.buttonStyle(GrowingButton())
        }.frame(width: 300, height: 500)
        
    }
}

struct PinkNoiseView_Previews: PreviewProvider {
    static var previews: some View {
        PinkNoiseView()
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(Color.cyan)
            .foregroundColor(Color.black)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 2, x: 5, y: 5)
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
