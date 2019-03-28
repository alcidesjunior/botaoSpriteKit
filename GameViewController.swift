//
//  GameViewController.swift
//  BotaoSpriteKit
//
//  Created by Alcides Junior on 28/03/19.
//  Copyright © 2019 Alcides Junior. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            view.presentScene(scene)
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
