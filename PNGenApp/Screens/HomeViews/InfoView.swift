//
//  InfoView.swift
//  PNGen
//
//  Created by Thomas Arnold on 08.04.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
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
        .padding(20)
        
    }
}

