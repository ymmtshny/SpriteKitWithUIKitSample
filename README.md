# SpriteKitWithUIKitSample

This project contains sample codes of mixing UIKit and SpriteKi.

## Test1
[Source Codes](https://github.com/ymmtshny/SpriteKitWithUIKitSample/tree/master/SpriteKitWithUIKitSample/ParticleTest_1)  
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

## Test2
[Source Codes](https://github.com/ymmtshny/SpriteKitWithUIKitSample/tree/master/SpriteKitWithUIKitSample/New%20Group1)  
<img src="https://github.com/ymmtshny/SpriteKitWithUIKitSample/blob/master/images/test2.gif" width="320" />  

Set the following image as ParticleTest_2's texture.  
<img src="https://github.com/ymmtshny/SpriteKitWithUIKitSample/blob/master/SpriteKitWithUIKitSample/New%20Group1/Assets.xcassets/Particle%20Sprite%20Atlas.spriteatlas/balloons.imageset/8-colorful-balloons-png-image-download-balloons.png?raw=true" width="120" />



## License
MIT
