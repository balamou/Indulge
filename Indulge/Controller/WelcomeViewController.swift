//
//  ViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.layer.addSublayer(Colors.backround(self.view.bounds))
    }


}

