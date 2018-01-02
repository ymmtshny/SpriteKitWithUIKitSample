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
        addParticle()
    }
    
    func addParticle(){
        if let node = SKEmitterNode(fileNamed: "ParticleTest_1") {
            node.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
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

