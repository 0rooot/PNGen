//
//  InfoView.swift
//  PNGen
//
//  Created by Thomas Arnold on 08.04.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView{
        VStack(alignment: .leading) {
            Spacer()
            Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Title"))
                .font(.largeTitle)
                .padding(.bottom, 20)
            Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseExplanation.Body"))
                .font(.body)
                .lineSpacing(10)
                .padding(.bottom, 5)
            Spacer()
            Group{
                Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Title"))
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step1"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step2"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 10)
                Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.PinkNoiseUsage.Step3"))
                    .font(.body)
                    .lineSpacing(10)
                    .padding(.bottom, 10)
            }
            Spacer()
            Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.FurtherInfos.Title"))
                .font(.largeTitle)
                .padding(.bottom, 20)
            Text(LocalizedStringKey("PinkNoiseGeneratorView.Info.FurtherInfos.Body"))
                .font(.body)
                .lineSpacing(10)
                .padding(.bottom, 10)
            Spacer()
        }
        .padding(20)
        }
    }
}

