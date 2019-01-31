//
//  SCNScene+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNScene {
    
    public static func scene(apply closure: (SCNScene) -> Void) -> SCNScene {
        let scene = SCNScene()
        closure(scene)
        return scene
    }
    
    public func apply(_ closure: (SCNScene) -> Void) {
        closure(self)
    }

}
