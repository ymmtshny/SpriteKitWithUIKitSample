//
//  ViewController.swift
//  SpriteKitWithUIKitSample
//
//  Created by Shinya Yamamoto on 2018/01/02.
//  Copyright © 2018年 shinyayamamoto. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let titleArray = ["Gravity Test 1",
                      "Gravity Test 2",
                      "Gravity Test 3",
                      "ParticleTest 1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

//    func showParticle() {
//        let skView = SKView(frame: CGRect(x:0,y:0,width:300,height:300))
//        skView.center = view.center
//        self.view.addSubview(skView)
//        let scene = LightScene(size: skView.frame.size)
//        skView.ignoresSiblingOrder = true
//        scene.scaleMode = .aspectFill
//        skView.presentScene(scene)
//    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = titleArray[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let vc = GravityTest_1_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = GravityTest_2_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = GravityTest_3_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = ParticleTest_1_ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:()
        }
    }
}

