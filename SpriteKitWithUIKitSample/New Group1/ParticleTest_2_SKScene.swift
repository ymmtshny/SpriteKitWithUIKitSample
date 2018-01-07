//
//  ParticleTest_2_SKScene.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/07.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import SpriteKit

class ParticleTest_2_SKScene : SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
    }
    
    internal func addParticle(center:CGPoint){
        if let node = SKEmitterNode(fileNamed: "ParticleTest_2") {
            node.position = center
            self.addChild(node)
            node.run(
                SKAction.sequence([
                    SKAction.wait(forDuration: 10.0),
                    SKAction.removeFromParent()
                    ])
            )
        }
    }
    
    
}
