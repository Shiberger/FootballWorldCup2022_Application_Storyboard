//
//  HomeViewController.swift
//  FinalOOP_Football
//
//  Created by Hannarong Kaewkiriya on 29/11/2565 BE.
//

import UIKit
import Lottie

class HomeViewController: UIViewController {
    
    var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = .init(name: "127954-fifa-world-cup-animation")
        animationView?.frame = view.bounds
        animationView?.animationSpeed = 0.5
        view.addSubview(animationView!)
        animationView?.play()
        view.sendSubviewToBack(animationView!)
        
        // Do any additional setup after loading the view.
    }
    
}


