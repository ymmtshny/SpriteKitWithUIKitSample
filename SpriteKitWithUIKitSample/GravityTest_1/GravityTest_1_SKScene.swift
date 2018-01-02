//
//  GravityTest_2_SKScene.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import SpriteKit

class GravityTest_1_SKScene : SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        addSKLabel()
    }
    
    func addSKLabel(){
        let myLabel = SKLabelNode(text: "Hello, World!")
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        myLabel.physicsBody = SKPhysicsBody.init(rectangleOf: myLabel.frame.size)
        self.addChild(myLabel)
    }
    
}
