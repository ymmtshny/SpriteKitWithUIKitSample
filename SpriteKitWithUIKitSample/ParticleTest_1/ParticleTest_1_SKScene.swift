//
//  ParticleTest_1_SKScene.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import SpriteKit

class ParticleTest_1_SKScene : SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
    }
    
    internal func addParticle(center:CGPoint){
        if let node = SKEmitterNode(fileNamed: "ParticleTest_1") {
            node.position = center
            self.addChild(node)
            node.run(
                SKAction.sequence([
                    SKAction.wait(forDuration: 1.0),
                    SKAction.removeFromParent()
                    ])
            )
        }
    }

    
}

