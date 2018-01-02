//
//  GravityTest_2_SKScene.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import SpriteKit

class GravityTest_2_SKScene : SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        addSKLabel()
    }
    
    func addSKLabel(){
        let myLabel = SKLabelNode(text: "Hello, World!")
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:self.size.width / 2 , y:0)
        myLabel.physicsBody = SKPhysicsBody.init(rectangleOf: myLabel.frame.size)
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0.3)
        self.addChild(myLabel)
    }
    
}
