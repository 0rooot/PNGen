//
//  HintView.swift
//  PNGen
//
//  Created by Thomas Arnold on 08.04.22.
//

import SwiftUI

struct HintView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey("PinkNoiseGeneratorView.Hint.Title"))
                .font(.title.bold())
            Group{
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "speaker.wave.2.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                        VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Hint.Volume"))
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(maxHeight: .infinity, alignment: .leading)
                                .font(.system(size: 18.0))
                                .padding(.leading, 10)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "lock.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                        VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Hint.Lock"))
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(maxHeight: .infinity, alignment: .leading)
                                .font(.system(size: 18.0))
                                .padding(.leading, 10)
                        }
                    }
                }
                Spacer()
            }
            .font(.body)
            .lineSpacing(10)
            .padding(5)
            .font(.subheadline)}
        
    }
}

