//
//  SCNNode+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNNode {
    
    public static func node(apply closure: (SCNNode) -> Void) -> SCNNode {
        let node = SCNNode()
        closure(node)
        return node
    }
    
    public func apply(_ closure: (SCNNode) -> Void) {
        closure(self)
    }

    @discardableResult
    public func node(apply closure: (SCNNode) -> Void) -> SCNNode {
        let node = SCNNode()
        self.addChildNode(node)
        closure(node)
        return node
    }
    
    @discardableResult
    public func light(apply closure: (SCNLight) -> Void) -> SCNLight {
        let light = SCNLight()
        self.light = light
        closure(light)
        return light
    }
    
    @discardableResult
    public func camera(apply closure: (SCNCamera) -> Void) -> SCNCamera {
        let camera = SCNCamera()
        self.camera = camera
        closure(camera)
        return camera
    }
    
}

