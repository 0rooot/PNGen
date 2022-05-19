//
//  PlaySound.swift
//  PNGen
//
//  Created by Main Developer on 18.03.22.
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
        _ = try? AVAudioSession.sharedInstance() //shared Instance means that the app can be in the background and the Sound is playing on
            .setCategory(
                AVAudioSession.Category.playback,
                         mode: .default,
                         options: .mixWithOthers
            )
        _ = try? AVAudioSession.sharedInstance()
            .setPrefersNoInterruptionsFromSystemAlerts(true) //if a system alert comes, the noise plays preferably on
        player = try AVAudioPlayer(contentsOf: url!)
        player.volume = 0 //volume starts with 0 because of fade in
        player?.play() //audio starts playing
        player.setVolume(1, fadeDuration: 0.5) //volume gets up to 1 in the defined amount of seconds --> fade in
        player.numberOfLoops = -1 // -1 means that it is playing eternaly
    } catch {
        print("error")
    }
}

func stopPinkNoise(){
    player?.stop()
}

func playNoiseIfAutoStart(){
    //this function reads the AUTO_START variable if it is set to true. If yes, it plays the sound where this function is being used.
    if(UserDefaults.standard.bool(forKey: "AUTO_START")){
    playPinkNoise(key: "PINKNoise", format: "mp3")
    }
}

