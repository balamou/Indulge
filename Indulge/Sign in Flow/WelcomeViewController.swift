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
        btn.backgroundColor = #colorLiteral(red: 0.2156862745, green: 0.337254902, blue: 0.6235294118, alpha: 1)
        
        return btn
    }()
 
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btn.setTitleColor(UIColor.black, for: .normal)
        
        return btn
    }()
    
    lazy var createAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Create an Account", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.368627451, green: 0.3843137255, blue: 0.462745098, alpha: 1), for: .normal)
        
        return btn
    }()
    
    
    class Constraints {
        
        static func getLoginGoogleButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .bottom, .equal, view, .top, 1.0, -10)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 294)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 51)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        static func getLoginFacebookButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .bottom, .equal, view, .top, 1.0, -115)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 294)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 51)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        static func getLoginButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .bottom, .equal, view, .top, 1.0, -9)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 330)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 57)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        static func getCreateAccountButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .bottomMargin, .equal, view, .bottomMargin, 1.0, -14)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 134)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 26)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        view.layer.addSublayer(Colors.backround(self.view.bounds))
        
        view.addSubviewLayout(createAccountButton)
        NSLayoutConstraint.activate(Constraints.getCreateAccountButton(createAccountButton, view))
        
        view.addSubviewLayout(loginButton)
        NSLayoutConstraint.activate(Constraints.getLoginButton(loginButton, createAccountButton))
        
        view.addSubviewLayout(loginFacebookButton)
        NSLayoutConstraint.activate(Constraints.getLoginFacebookButton(loginFacebookButton, loginButton))
        
        view.addSubviewLayout(loginGoogleButton)
        NSLayoutConstraint.activate(Constraints.getLoginGoogleButton(loginGoogleButton, loginFacebookButton))
        
        
        createAccountButton.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func createAccountTapped(){
        let phoneNumberViewController = PhoneNumberViewController()
        navigationController?.pushViewController(phoneNumberViewController, animated: true)
    }
    
    
    
    
    


}

