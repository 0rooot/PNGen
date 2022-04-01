//
//  PinkNoiseView.swift
//  PNGen
//
//  Created by Thomas Arnold on 05.03.22.
//

import SwiftUI
import AudioToolbox

struct PinkNoiseView: View {
    
    @State var lang = "DE"
    @State private var showingInformationPopover = false
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
                                UIScreen.main.brightness = CGFloat(1)
                                UIApplication.shared.isIdleTimerDisabled = false
                            } else {
                                playNoise = false
                                buttonTitle = "Start \n Pink Noise"
                                stopPinkNoise()
                                UIScreen.main.brightness = CGFloat(0.3)
                                UIApplication.shared.isIdleTimerDisabled = true
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
                            VStack(alignment: .leading) {
                                HStack{
                                    Image(systemName: "speaker.wave.2.circle").resizable().aspectRatio(contentMode: .fit)
                                    Spacer()
                                    VStack{Text("Stelle die Lautstärke auf Maximum und deaktiviere den Lautlos Modus." )
                                            .fixedSize(horizontal: false, vertical: true)
                                            .frame(maxHeight: .infinity, alignment: .top)
                                            .font(.system(size: 14.0))
                                    }
                                }
                            }
                            VStack(alignment: .leading) {
                                HStack{
                                    Image(systemName: "lock.circle").resizable().aspectRatio(contentMode: .fit)
                                    Spacer()
                                    VStack{Text("Sperren sie das Iphone um Akku zu sparen." )
                                            .fixedSize(horizontal: false, vertical: true)
                                            .frame(maxHeight: .infinity, alignment: .top)
                                            .font(.system(size: 14.0))
                                    }
                                }
                            }
                            Spacer()
                        }
                        .font(.body)
                        .lineSpacing(10)
                        .padding(5)
                        .font(.subheadline)}
                    .frame(width: geometry.size.width/1.1, height: geometry.size.height/2)
                }
            }
            .navigationBarTitle("Pink Noise Generator", displayMode: .inline)
            .navigationBarItems(leading:
                                    Button(action: {
            }) {
                Image(systemName: "character.bubble")
                    .imageScale(.large)
            } , trailing: (
                Button(action: {
                    withAnimation {
                        showingInformationPopover = true
                    }
                }) {
                    Image(systemName: "info.circle")
                        .imageScale(.large)
                }
                    .popover(isPresented: $showingInformationPopover) {
                        VStack(alignment: .leading) {
                            Spacer()
                            Text("Was ist Pink Noise?")
                                .font(.largeTitle)
                                .padding(.bottom, 20)
                            Text("Pink Noise ist der Sound von allen Frequenzen. Pink Noise hat verschiedene Einsatzzwecke. Das Einsatzgebiet dieser App ist die Überwachungs- und Abhör-Abwehr. Pink Noise soll die umliegenden Mikrofone von Smartphones und Smartwatches füllen und die Aufnahme von Gesprächen verhindern." )
                                .font(.body)
                                .lineSpacing(10)
                                .padding(.bottom, 5)
                            Spacer()
                            Group{
                                Text("Optimale Anwendung:")
                                    .font(.largeTitle)
                                    .padding(.bottom, 20)
                                Text("1. Pink Noise mit Button Starten" )
                                    .font(.body)
                                    .lineSpacing(10)
                                    .padding(.bottom, 10)
                                Text("2. Alle Smartphones und Smartwatches im Raum in das Lauschschutzglas legen" )
                                    .font(.body)
                                    .lineSpacing(10)
                                    .padding(.bottom, 10)
                                Text("3. Lauschschutz Glas schliessen und Sitzung beginnen." )
                                    .font(.body)
                                    .lineSpacing(10)
                                    .padding(.bottom, 10)
                            }
                            Spacer()
                            Text("Weitere Infos:")
                                .font(.largeTitle)
                                .padding(.bottom, 20)
                            Text("Ich mag Züge" )
                                .font(.body)
                                .lineSpacing(10)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
            )
            )
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
