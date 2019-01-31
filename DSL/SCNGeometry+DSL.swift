//
//  SCNGeometry+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNGeometry {
    
    public static func geometry(apply closure: (SCNGeometry) -> Void) -> SCNGeometry {
        let geometry = SCNGeometry()
        closure(geometry)
        return geometry
    }
    
}
