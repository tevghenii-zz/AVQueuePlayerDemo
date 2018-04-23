//
//  ViewController.swift
//  AVQueuePlayerDemo
//
//  Created by Evghenii Todorov on 4/23/18.
//  Copyright © 2018 Todorov Evghenii. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var playerView: PlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url1 = URL(fileURLWithPath:Bundle.main.path(forResource: "video1", ofType: "m4v")!)
        let url2 = URL(fileURLWithPath:Bundle.main.path(forResource: "video2", ofType: "m4v")!)
        
        play(urls: [url1, url2])
    }
    
    func play(urls: [URL]) {
        playerView.player = AVQueuePlayer()
        
        for url in urls {
            let videoAsset = AVURLAsset(url: url)
            let loopItem = AVPlayerItem(asset: videoAsset)
            playerView.player?.insert(loopItem, after: nil)
        }
        
        playerView.player?.play()
    }
}
