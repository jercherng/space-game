//
//  GameScene.swift
//  simpleGame
//
//  Created by Jer Cherng Law on 4/1/15.
//  Copyright (c) 2015 evehandful. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var player:SKSpriteNode = SKSpriteNode()
    
    // below two properties decide when to create aliens
    var lastYieldTimeInterval: NSTimeInterval = NSTimeInterval()
    var lastUpdateTimerInterval: NSTimeInterval = NSTimeInterval()
    
    // counts the number of aliens destroyed
    var aliensDestroyed: Int = 0
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Helvetica Neue")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
