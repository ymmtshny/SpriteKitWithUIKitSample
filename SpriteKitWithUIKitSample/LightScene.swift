//
//  LightScene.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class LightScene : SKScene {
    
    let kFadeDuration = TimeInterval(1.3)
    var lightNode: SKEmitterNode!
    
    override func didMove(to view: SKView) {
        addPaper()
        showPaper()
    }
    
    override func willMove(from: SKView) {
        super.willMove(from: from)
        lightNode.removeFromParent()
    }
    
    func addPaper(){
        let fileName = "Bokeh"
        let path = Bundle.main.path(forResource: fileName, ofType: "sks")!
        lightNode = NSKeyedUnarchiver.unarchiveObject(withFile: path) as! SKEmitterNode
        lightNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2)
        lightNode.alpha = 0
        addChild(lightNode)
    }
    
    func showPaper(){
        let show = SKAction.fadeIn(withDuration: kFadeDuration)
        lightNode.run(show)
    }
}
    
    
