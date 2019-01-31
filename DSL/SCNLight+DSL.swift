//
//  SCNLight+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNLight {
    
    public static func light(apply closure: (SCNLight) -> Void) -> SCNLight {
        let light = SCNLight()
        closure(light)
        return light
    }
    
    public func apply(_ closure: (SCNLight) -> Void) {
        closure(self)
    }

}
