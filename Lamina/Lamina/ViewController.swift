//
//  ViewController.swift
//  Lamina
//
//  Created by George Roy on 10/10/18.
//  Copyright © 2018 wiclf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
            
        // Do any additional setup after loading the view, typically from a nib.
    }


}

