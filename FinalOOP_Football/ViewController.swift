//
//  ViewController.swift
//  FinalOOP_Football
//
//  Created by Hannarong Kaewkiriya on 28/11/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnstart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "GroupID") as?
        ViewController2
        
        vc!.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

