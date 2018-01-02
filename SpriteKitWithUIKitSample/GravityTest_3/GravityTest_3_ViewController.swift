//
//  GravityTest_3_ViewController.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class GravityTest_3_ViewController: SKUIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addLabel()
    }
    
    func addLabel() {
        let skscene = GravityTest_3_SKScene(size: view.frame.size)
        self.skView.presentScene(skscene)
    }
}
