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
    
    
    class Constraints {
        
        static func getLoginGoogleButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 294)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 51)
            let clipBottom = NSLayoutConstraint(btn, .bottomMargin, .equal, view, .bottomMargin, 1.0, -282)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        //self.view.layer.addSublayer(Colors.backround(self.view.bounds))
        
        self.view.addSubview(loginGoogleButton)
        loginGoogleButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(Constraints.getLoginGoogleButton(loginGoogleButton, view))
    }
    
    


}

