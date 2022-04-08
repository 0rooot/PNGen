//
//  PlaySound.swift
//  PNGen
//
//  Created by Thomas Arnold on 18.03.22.
//

import Foundation
import AVFoundation

var player1: AVAudioPlayer!
var player2: AVAudioPlayer!

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
        player1 = try AVAudioPlayer(contentsOf: url!)
        player1?.play()
        player1.numberOfLoops = -1
    } catch {
        print("error")
    }
}

func playPinkNoise2(key: String, format: String){
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
        player2 = try AVAudioPlayer(contentsOf: url!)
        player2?.play()
        player2.numberOfLoops = -1
    } catch {
        print("error")
    }
}


func stopPinkNoise(){
    player1?.stop()
    player2?.stop()
}
