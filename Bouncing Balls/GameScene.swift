//
//  GameScene.swift
//  Bouncing Balls
//
//  Created by Son  Luu on 2/26/15.
//  Copyright (c) 2015 Son Luu. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
    
        // add edges
        let edge = SKNode()
        edge.position = CGPointZero
        edge.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        self.addChild(edge)
        
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let ballLocation : CGPoint = touch.locationInNode(self)
            var randomNumber = arc4random_uniform(3)
            var ball : SKSpriteNode!
            
            switch randomNumber {
            case 0:
                ball = SKSpriteNode(imageNamed: "SoccerBall")
                ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width * 0.5)
                ball.physicsBody?.restitution = 0.3
                ball.physicsBody?.mass = 0.4
                ball.physicsBody?.angularVelocity = 20.0
            case 1:
                ball = SKSpriteNode(imageNamed: "BeachBall")
                ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width * 0.5)
                ball.physicsBody?.restitution = 0.6
                ball.physicsBody?.mass = 0.1
                ball.physicsBody?.angularVelocity = 20.0
            default:
                ball = SKSpriteNode(imageNamed: "8Ball")
                ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width * 0.5)
                ball.physicsBody?.restitution = 0.0
                ball.physicsBody?.mass = 0.8
                ball.physicsBody?.angularVelocity = 20.0
            }
            
            ball.position = ballLocation
            self.addChild(ball)

            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func createBalls (ballLocation : CGPoint) {
        
    
        
        
        
        
    }
}
