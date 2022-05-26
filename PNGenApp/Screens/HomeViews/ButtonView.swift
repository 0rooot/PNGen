//
//  ButtonView.swift
//  PNGen
//
//  Created by Main Developer on 08.04.22.
//

import SwiftUI
import AudioToolbox

struct ButtonView: View {
    
    @State var playNoise = UserDefaults.standard.bool(forKey: "AUTO_START") //reads if the user enabled the Autostart setting
    @State var buttonTitleStart: LocalizedStringKey =  "ButtonView.ButtonTitle.Start"
    @State var buttonTitleStopp: LocalizedStringKey =  "ButtonView.ButtonTitle.Stopp"
    @State var buttonColor: Color = setButtonColor()
    @State var standardBrightness = UIScreen.main.brightness; //brightness of the phone to decrease it when sound played
    
    var body: some View {
        
        HStack(alignment: .center){
            Button(action: {
                if (playNoise==false) {
                    playNoise = true //when the noise is playing variable playNoise will be set to true
                    
                    playPinkNoise(key: "PINKNoise", format: "mp3") //audio file gets started
                    //playPinkNoise(key: "opt-Sig", format: "mp3")
                    buttonColor = setButtonColorBlue() //set Button Color to blue
                    UIScreen.main.brightness = CGFloat(0.3) //brightness gets reduced
                    UIApplication.shared.isIdleTimerDisabled = false //turn screen off after a time
                } else {
                    playNoise = false
                    stopPinkNoise()
                    buttonColor = setButtonColorRed() //set Button color to red again
                    UIScreen.main.brightness = standardBrightness //set again the normal brightness
                    UIApplication.shared.isIdleTimerDisabled = true //do not turn off screen after a time
                }
            }){
                Text(playNoise ? buttonTitleStopp : buttonTitleStart) //switches the text when playing noise
                    .bold()
                    .font(.title)
                    .frame(width: UIScreen.main.bounds.size.width/1.7, height: UIScreen.main.bounds.size.width/1.7, alignment: .center) //button size relative to screen width
                    .background(buttonColor)
                    .multilineTextAlignment(.center)
                    .clipShape(Circle())
            }
            .buttonStyle(ShrinkingButton())
        }
    }
}
//defines the Button Style - When the user presses the button, the button gets a bit smaller
struct ShrinkingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white) //textColor
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 1, x: 0, y: -2) //small Shadow on top of the Button
            .scaleEffect(configuration.isPressed ? 0.9 : 1) //shrink ratio
            .animation(.easeOut(duration: 0.4), value: configuration.isPressed) //animation of the shrink
    }
}

func setButtonColor() -> Color {
    if(UserDefaults.standard.bool(forKey: "AUTO_START")){
        return setButtonColorBlue()
    } else {
        return setButtonColorRed()
    }
}

func setButtonColorBlue() -> Color {
    return Color(red: 26 / 255, green: 99 / 255, blue: 145 / 255)
}

func setButtonColorRed() -> Color {
    return Color(red: 186 / 255, green: 0 / 255, blue: 8 / 255)
}
