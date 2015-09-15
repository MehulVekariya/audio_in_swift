//
//  ViewController.swift
//  audio_in_swift
//
//  Created by mehul patel on 2015-09-15.
//  Copyright (c) 2015 Mehul Vekariya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audio: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func playaudio(sender: AnyObject) {
        
        var audioPath = NSString(string: NSBundle.mainBundle().pathForResource("audio", ofType: "mp3")!)
        
        var error: NSError? = nil
        
        //instantiate the player
        audio = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String), error: &error)
        audio.prepareToPlay()
        audio.play()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

