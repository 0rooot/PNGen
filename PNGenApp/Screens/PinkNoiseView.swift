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
                VStack {
                    HStack {
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
                    .border(Color.green, width: 3)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    
                    VStack(alignment: .leading) {
                        Text("Anleitung:")
                            .font(.title.bold())
                        Group{
                            Text("- Mache dies" )
                            Text("- Mache das" )}
                        .font(.subheadline)}
                    .frame(width: geometry.size.width/1.1, height: geometry.size.height/2)
                    .border(Color.red, width: 3)
                }
                
                .border(Color.blue, width: 3)
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
