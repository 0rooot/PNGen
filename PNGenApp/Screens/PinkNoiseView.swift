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
    @State var buttonTitle: String = "Start \n Pink Noise"
    
    var body: some View {
        
        return NavigationView {
            GeometryReader { geometry in
                VStack {
                    HStack {
                        Button(action: {
                            if (playNoise==false) {
                                playNoise = true
                                buttonTitle = "Stop \n Pink Noise"
                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
                                playPinkNoise(key: "PINKNoise", format: "mp3")
                            } else {
                                playNoise = false
                                buttonTitle = "Start \n Pink Noise"
                                stopPinkNoise()
                            }
                        }){
                            Text(buttonTitle)
                                .bold()
                                .font(.title)
                                .frame(width: 200, height: 150, alignment: .center)
                                .multilineTextAlignment(.center)
                                .clipShape(Circle())
                        }
                        .buttonStyle(GrowingButton())
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    
                    VStack(alignment: .leading) {
                        Text("Hinweis:")
                            .font(.title.bold())
                        Group{
                            Text("- Stelle die Lautstärke auf Maximum für bessere Zuverlässigkeit des Abhöhrschutzes." )
                            Text("- Schalten sie " )
                            Text("- Sperren sie das Iphone um Akku zu sparen" )
                        }
                        .font(.subheadline)}
                    .frame(width: geometry.size.width/1.1, height: geometry.size.height/2)
                }
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
            .background(Color(red: 90 / 255, green: 0 / 255, blue: 40 / 255))
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 2, x: 5, y: 5)
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
