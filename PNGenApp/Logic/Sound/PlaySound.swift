//
//  PlaySound.swift
//  PNGen
//
//  Created by Thomas Arnold on 18.03.22.
//

import Foundation
import AVFoundation

var player1: AVAudioPlayer!

func playPinkNoise1(key: String, format: String){
    let url = Bundle.main.url(forResource: key, withExtension: format)
    
    guard url != nil else {
        return
    }
    
    do {
        _ = try? AVAudioSession.sharedInstance()
            .setCategory(
                AVAudioSession.Category.playback,
                         mode: .default,
                         options: .mixWithOthers
            )
        _ = try? AVAudioSession.sharedInstance()
            .setPrefersNoInterruptionsFromSystemAlerts(true)
        player1 = try AVAudioPlayer(contentsOf: url!)
        player1.volume = 0
        player1?.play()
        player1.setVolume(1, fadeDuration: 0.5)
        player1.numberOfLoops = -1
    } catch {
        print("error")
    }
}

func stopPinkNoise(){
    player1?.stop()
}

func playNoiseIfAutoStart(){
    if(UserDefaults.standard.bool(forKey: "AUTO_START")){
    playPinkNoise1(key: "PINKNoise", format: "mp3")
    }
}

