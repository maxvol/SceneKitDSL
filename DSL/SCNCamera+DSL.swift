//
//  SCNCamera+DSL.swift
//  SceneKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import SceneKit

extension SCNCamera {
    
    public static func camera(apply closure: (SCNCamera) -> Void) -> SCNCamera {
        let camera = SCNCamera()
        closure(camera)
        return camera
    }
    
}
