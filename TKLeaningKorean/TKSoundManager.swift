//
//  TKSoundManager.swift
//  TKLeaningKorean
//
//  Created by KimGiBong on 2015/07/01.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit
import AVFoundation

class TKSoundManager: NSObject, AVAudioPlayerDelegate {

    var soundArray:NSMutableArray = NSMutableArray()
    var audioPlayer: AVAudioPlayer? = nil
    
    override init() {
        super.init()

        do {
            let soundUrl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("test", ofType: "mp3")!)
            print(soundUrl)
            try audioPlayer = AVAudioPlayer(contentsOfURL: soundUrl)
            audioPlayer!.delegate = self
            audioPlayer!.prepareToPlay()

            //            audioPlayer.numberOfLoops = 1
            //            audioPlayer.volume = 1.0
            
        } catch {
            print("Fail init audioPlayer!!")
        }
    }
    func playsound(fileName:NSString) {
        self.audioPlayer!.play()

        print("test",(self.audioPlayer!.playing))
        
    }
    
    // MARK : AVAudioPlayerDelegate
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
        print("audioPlayerDidFinishPlaying",(flag))
    }
    
    /* if an error occurs while decoding it will be reported to the delegate. */
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: NSError?) {
        print("audioPlayerDecodeErrorDidOccur",(error))
    }

}
