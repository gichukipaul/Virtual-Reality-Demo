//
//  ViewController.swift
//  RealityDemo
//
//  Created by user on 27/11/2022.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor    = try! Experience.loadBox()
        let spaceAnchor  = try! Space.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(spaceAnchor)
    }
}
