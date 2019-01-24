//
//  ViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    lazy var loginGoogleButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login with Google", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.3529411765, blue: 0.3058823529, alpha: 1)
        
        return btn
    }()
    
    lazy var loginFacebookButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login with Facebook", for: .normal)
        
        return btn
    }()
    
    lazy var createAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Create an Account", for: .normal)
        
        return btn
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        //self.view.layer.addSublayer(Colors.backround(self.view.bounds))
        
        self.view.addSubview(loginGoogleButton)
        loginGoogleButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        let horizontalCenter = NSLayoutConstraint(item: loginGoogleButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let width = NSLayoutConstraint(item: loginGoogleButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 294)
        
        let height = NSLayoutConstraint(item: loginGoogleButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 51)
        
        let clipBottom = NSLayoutConstraint(item: loginGoogleButton, attribute: .bottomMargin, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: -282)
   
        let contraints = [horizontalCenter, clipBottom, width, height]
        
        NSLayoutConstraint.activate(contraints)
    }


}

