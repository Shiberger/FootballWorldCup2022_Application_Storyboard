//
//  ViewController4.swift
//  FinalOOP_Football
//
//  Created by Hannarong Kaewkiriya on 28/11/2565 BE.
//

import AVFoundation
import UIKit
import WebKit

class ViewController4: UIViewController,WKUIDelegate {
    
    var web = String()
    var player: AVAudioPlayer?
    
    @IBOutlet weak var musicout: UIButton!
    
    @IBOutlet weak var dieforyouout: UIButton!
    @IBAction func btnmusic(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            musicout.setTitle("Play", for: .normal)
            player.stop()
        }
        else {
            // set up player, and play
            musicout.setTitle("Stop", for: .normal)
            let urlString = Bundle.main.path(forResource: "wavinflag", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("Something went wrong")
            }
        }
    }
    
    
    @IBAction func btndieforyou(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            musicout.setTitle("Play", for: .normal)
            player.stop()
        }
        else {
            // set up player, and play
            musicout.setTitle("Stop", for: .normal)
            let urlString = Bundle.main.path(forResource: "dieforyou", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("Something went wrong")
            }
        }
    }
    
    @IBOutlet weak var webshow: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:web)
        let myRequest = URLRequest(url: myURL!)
        webshow.load(myRequest)
        // Do any additional setup after loading the view.
    }
    
}
