//
//  UISKButton.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/07.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class UISKButton:UIButton {
    
    internal var skView = SKView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        skView.frame = self.bounds
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        skView.isUserInteractionEnabled = false
        skView.allowsTransparency = true
        let initialScene = SKScene()
        initialScene.backgroundColor = .clear
        skView.presentScene(initialScene)
        self.addSubview(skView)
    }
    
}
