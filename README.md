# SceneKitDSL
Swift DSL for SceneKit

See demo project DSLSceneGame (https://github.com/maxvol/DSLSceneGame) for reference.

Build scene in a structured way
```swift
scene.rootNode.apply {
    // create and add a camera to the scene
    $0.node {
        $0.camera { _ in }
        // place the camera
        $0.position = SCNVector3(x: 0, y: 0, z: 15)
    }
    // create and add a light to the scene
    $0.node {
        $0.light {
            $0.type = .omni
        }
        $0.position = SCNVector3(x: 0, y: 10, z: 10)
    }
    // create and add an ambient light to the scene
    $0.node {
        $0.light {
            $0.type = .ambient
            $0.color = UIColor.darkGray
        }
        $0.position = SCNVector3(x: 0, y: 10, z: 10)
    }
}
```
...instead of

```swift
// create and add a camera to the scene
let cameraNode = SCNNode()
cameraNode.camera = SCNCamera()
scene.rootNode.addChildNode(cameraNode)

// place the camera
cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)

// create and add a light to the scene
let lightNode = SCNNode()
lightNode.light = SCNLight()
lightNode.light!.type = .omni
lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
scene.rootNode.addChildNode(lightNode)

// create and add an ambient light to the scene
let ambientLightNode = SCNNode()
ambientLightNode.light = SCNLight()
ambientLightNode.light!.type = .ambient
ambientLightNode.light!.color = UIColor.darkGray
scene.rootNode.addChildNode(ambientLightNode)
```

Carthage setup -
```
github "maxvol/SceneKitDSL" ~> 0.0.2
```
