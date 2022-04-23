//
//  ButtonView.swift
//  PNGen
//
//  Created by Thomas Arnold on 08.04.22.
//

import SwiftUI
import AudioToolbox

struct ButtonView: View {
    
    

    @State var playNoise = UserDefaults.standard.bool(forKey: "AUTO_START")
    @State var buttonTitleStart: LocalizedStringKey =  "ButtonView.ButtonTitle.Start"
    @State var buttonTitleStopp: LocalizedStringKey =  "ButtonView.ButtonTitle.Stopp"
    @State var standardBrightness = UIScreen.main.brightness;
    
    var body: some View {
        HStack {
            Button(action: {
                if (playNoise==false) {
                    playNoise = true
                    
                    playPinkNoise1(key: "PINKNoise", format: "mp3")
                    //playPinkNoise2(key: "opt-Sig", format: "mp3")
                    UIScreen.main.brightness = CGFloat(0.3)
                    UIApplication.shared.isIdleTimerDisabled = false
                } else {
                    playNoise = false
                    stopPinkNoise()
                    UIScreen.main.brightness = standardBrightness
                    UIApplication.shared.isIdleTimerDisabled = true
                }
               // while playNoise {
               //     vibrate(count: 1)
               // }
            }){
                Text(playNoise ? buttonTitleStopp : buttonTitleStart)
                    .bold()
                    .font(.title)
                    .frame(width: 200, height: 200, alignment: .center)
                    .multilineTextAlignment(.center)
                    .clipShape(Circle())
            }
            .buttonStyle(GrowingButton())
            
        }
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(Color(red: 165 / 255, green: 32 / 255, blue: 25 / 255))
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 1, x: 0, y: -2)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.4), value: configuration.isPressed)
    }
}

func vibrate(count: Int) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
            vibrate(count: count - 1)
        }
    }

