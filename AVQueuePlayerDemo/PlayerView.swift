//
//  PlayerView.swift
//  AVQueuePlayerDemo
//
//  Created by Evghenii Todorov on 4/23/18.
//  Copyright © 2018 Todorov Evghenii. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerView: UIView {
    var player: AVQueuePlayer? {
        get {
            return playerLayer.player as? AVQueuePlayer
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
