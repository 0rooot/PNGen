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
                        Image(systemName: "speaker.wave.2.circle").withHintImageStyle()
                        VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Hint.Volume")).withHintTextStyle()
                        }
                    }
                }
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "lock.circle").withHintImageStyle()
                        VStack{Text(LocalizedStringKey("PinkNoiseGeneratorView.Hint.Lock")).withHintTextStyle()
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

extension Text {
    func withHintTextStyle() -> some View {
        self.fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: .infinity, alignment: .leading)
            .font(.system(size: 18.0))
            .padding(.leading, 10)
    }
}

extension Image {
    func withHintImageStyle() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
    }
}
