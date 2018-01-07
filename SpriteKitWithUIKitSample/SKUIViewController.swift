//
//  SKUIViewController.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class SKUIViewController :  UIViewController {
    
    internal var skView = SKView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skView = SKView(frame: view.frame)
        skView.center = view.center
        skView.isUserInteractionEnabled = false
        skView.allowsTransparency = true
        let initialScene = SKScene()
        initialScene.backgroundColor = .clear
        skView.presentScene(initialScene)
        self.view.addSubview(skView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skView.frame = view.frame
    }
}
