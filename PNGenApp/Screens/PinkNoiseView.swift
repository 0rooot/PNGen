//
//  PinkNoiseView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI

struct Colors {
    static let navyBlue = UIColor(red: 0, green: 0, blue: 128.0, alpha: 1.0)
}

struct PinkNoiseView: View {
    
    var body: some View {
        VStack {
            Button(action: {
                print("Start Pink Noise Now!")
            }){
                Text("Start Pink Noise")
                    .frame(width: 250, height: 250)
                    .foregroundColor(Color.black)
                    .background(Color.red)
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
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
