# SpriteKitWithUIKitSample
<a href="http://opensource.org/licenses/MIT"><img src="https://camo.githubusercontent.com/e0d5267d60ee425acfe1a1f2d6e6d92a465dcd8f/687474703a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d626c75652e737667" alt="License" data-canonical-src="http://img.shields.io/badge/license-MIT-blue.svg" style="max-width:100%;"></a>
<a href="https://camo.githubusercontent.com/2acca656fb46139b261ec013b5dad205172fdcd4/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f58636f64652d392e302532422d626c75652e737667" target="_blank"><img src="https://camo.githubusercontent.com/2acca656fb46139b261ec013b5dad205172fdcd4/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f58636f64652d392e302532422d626c75652e737667" alt="Xcode 9.0+" data-canonical-src="https://img.shields.io/badge/Xcode-9.0%2B-blue.svg" style="max-width:100%;"></a>
<a href="https://camo.githubusercontent.com/988c4fe7435163e2c97239a8c6482771451ffa26/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f53776966742d342e302532422d6f72616e67652e737667" target="_blank"><img src="https://camo.githubusercontent.com/988c4fe7435163e2c97239a8c6482771451ffa26/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f53776966742d342e302532422d6f72616e67652e737667" alt="Swift 4.0+" data-canonical-src="https://img.shields.io/badge/Swift-4.0%2B-orange.svg" style="max-width:100%;"></a>

This project contains sample codes of mixing UIKit and SpriteKi.

## Sample1
Here is [Source Codes](https://github.com/ymmtshny/SpriteKitWithUIKitSample/tree/master/SpriteKitWithUIKitSample/ParticleTest_1) for this sample.  
<img src="https://github.com/ymmtshny/SpriteKitWithUIKitSample/blob/master/images/test1.gif" width="320" />  

When the user tapped a button, call addParticle function.
```
internal func addParticle(center:CGPoint){
        if let node = SKEmitterNode(fileNamed: "ParticleTest_1") {
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
```

## Sample2
Here is [Source Codes](https://github.com/ymmtshny/SpriteKitWithUIKitSample/tree/master/SpriteKitWithUIKitSample/New%20Group1)  for this sample.  
<img src="https://github.com/ymmtshny/SpriteKitWithUIKitSample/blob/master/images/test2.gif" width="320" />  

Set the following image as ParticleTest_2's texture.  
<img src="https://github.com/ymmtshny/SpriteKitWithUIKitSample/blob/master/SpriteKitWithUIKitSample/New%20Group1/Assets.xcassets/Particle%20Sprite%20Atlas.spriteatlas/balloons.imageset/8-colorful-balloons-png-image-download-balloons.png?raw=true" width="120" />




