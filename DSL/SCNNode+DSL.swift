//
//  SCNNode+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNNode {
    
    public static func shapeNode(apply closure: (SCNNode) -> Void) -> SCNNode {
        let node = SCNNode()
        closure(node)
        return node
    }
    
}

