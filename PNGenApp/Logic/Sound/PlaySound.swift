//
//  PlaySound.swift
//  PNGen
//
//  Created by Thomas Arnold on 18.03.22.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playPinkNoise(key: String, format: String){
    let url = Bundle.main.url(forResource: key, withExtension: format)
    
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
    } catch {
        print("error")
    }
}


func stopPinkNoise(){
    player?.stop()
}
