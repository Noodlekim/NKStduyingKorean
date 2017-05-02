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
        
        let soundUrl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("sample", ofType: "mp3")!)
        do {
            self.audioPlayer = try AVAudioPlayer.init(contentsOfURL: soundUrl)
            
            audioPlayer!.delegate = self
            audioPlayer!.prepareToPlay()
            audioPlayer!.volume = 1
            
        } catch let error {
            print("Error \(error)")
        }
    }
    
    func playsound(fileName:NSString) {
        if ( audioPlayer!.playing ){
            audioPlayer!.stop()
        }
        else{
            audioPlayer!.play()
        }
    }
    
    // MARK : AVAudioPlayerDelegate
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
//        print("audioPlayerDidFinishPlaying",(flag))
    }
    
    /* if an error occurs while decoding it will be reported to the delegate. */
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: NSError?) {
//        print("audioPlayerDecodeErrorDidOccur",(error))
    }

}
