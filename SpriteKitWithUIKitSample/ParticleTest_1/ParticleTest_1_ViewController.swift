//
//  ParticleTest_1_ViewController.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class ParticleTest_1_ViewController: SKUIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testButton.addTarget(self, action: #selector(tapTestButton(_:)), for: .touchUpInside)
    }
    
    @IBAction func tapTestButton(_ sender:UIButton) {
        let scene = ParticleTest_1_SKScene(size: view.frame.size)
        scene.backgroundColor = .clear
        scene.addParticle(center:sender.center)
        skView.presentScene(scene)
    }
    
}
