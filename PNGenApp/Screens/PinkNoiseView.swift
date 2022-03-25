//
//  PinkNoiseView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI
import AudioToolbox

struct PinkNoiseView: View {
    
    @State var playNoise = false
    
    var body: some View {
        
        return NavigationView {
            GeometryReader { geometry in
                VStack (alignment: .center){
                        Button(action: {
                            print("Start Pink Noise Now!")
                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
                            playPinkNoise(key: "PINKNoise", format: "mp3")
                        }){
                            Text("Play \n Pink Noise")
                                .bold()
                                .frame(width: 200, height: 150, alignment: .center)
                                .multilineTextAlignment(.center)
                                .clipShape(Circle())
                        }
                        .buttonStyle(GrowingButton())
                    }
                .frame(width: geometry.size.width, height: geometry.size.height/2)
            }
            .navigationBarTitle("Pink Noise Generator", displayMode: .inline)
            .navigationBarItems(trailing: (
                Button(action: {
                }) {
                    Image(systemName: "info.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
            ))
        }

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
