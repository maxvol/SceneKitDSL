//
//  SCNMaterial+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNMaterial {
    
    public static func material(apply closure: (SCNMaterial) -> Void) -> SCNMaterial {
        let material = SCNMaterial()
        closure(material)
        return material
    }
    
    public func apply(_ closure: (SCNMaterial) -> Void) {
        closure(self)
    }
    
}

