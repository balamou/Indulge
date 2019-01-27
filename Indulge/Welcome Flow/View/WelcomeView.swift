//
//  WelcomeView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    
    var didLayoutAlready = false
    
    lazy var indulgeLabel: UILabel = {
        var label = UILabel()
        label.text = "INDULGE"
        label.textAlignment = .center
        label.font = UIFont(name: "Cocon-Bold", size: 50.0)
        
        return label
    }()
    
    lazy var sloganLabel: UILabel = {
        var label = UILabel()
        label.text = "#TREAT YOURSELF"
        label.textAlignment = .center
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25.0)
        
        return label
    }()
    
    lazy var loginGoogleButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login with Google", for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Medium", size: 20.0)
        
        return btn
    }()
    
    lazy var loginFacebookButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login with Facebook", for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Medium", size: 20.0)
        
        return btn
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        //btn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Medium", size: 20.0)
        
        return btn
    }()
    
    lazy var createAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Create an Account", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.368627451, green: 0.3843137255, blue: 0.462745098, alpha: 1), for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Medium", size: 18.0)
        
        return btn
    }()
    
    
    func addStyle(_ btn: UIButton, _ color: UIColor){
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: btn.bounds, cornerRadius: 25.0).cgPath
        shadowLayer.fillColor = color.cgColor
        
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shadowLayer.shadowOpacity = 0.08
        shadowLayer.shadowRadius = 6
        
        btn.layer.insertSublayer(shadowLayer, at: 0)
    }
    
    class Constraints {
        
        static func setIndulgeLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 146).isActive = true
            label.widthAnchor.constraint(equalToConstant: 224).isActive = true
            label.heightAnchor.constraint(equalToConstant: 69).isActive = true
        }
        
        static func setSloganLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -8).isActive = true
            label.widthAnchor.constraint(equalToConstant: 220).isActive = true
            label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        
        static func setLoginGoogleButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -10).isActive = true
            btn.widthAnchor.constraint(equalToConstant: 294).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 51).isActive = true
        }
        
        static func setLoginFacebookButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -115).isActive = true
            btn.widthAnchor.constraint(equalToConstant: 294).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 51).isActive = true
        }
        
        static func setLoginButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -9).isActive = true
            btn.widthAnchor.constraint(equalToConstant: 330).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 57).isActive = true
        }
        
        static func setCreateAccountButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -14).isActive = true
            btn.widthAnchor.constraint(equalToConstant: 134).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 26).isActive = true
        }
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.addSublayer(Colors.backround(self.bounds))
        
        self.addSubviewLayout(indulgeLabel)
        self.addSubviewLayout(sloganLabel)
        self.addSubviewLayout(createAccountButton)
        self.addSubviewLayout(loginButton)
        self.addSubviewLayout(loginFacebookButton)
        self.addSubviewLayout(loginGoogleButton)
        
        Constraints.setIndulgeLabel(indulgeLabel, self)
        Constraints.setSloganLabel(sloganLabel, indulgeLabel)
        Constraints.setCreateAccountButton(createAccountButton, self)
        Constraints.setLoginButton(loginButton, createAccountButton)
        Constraints.setLoginFacebookButton(loginFacebookButton, loginButton)
        Constraints.setLoginGoogleButton(loginGoogleButton, loginFacebookButton)
    }
    
    func viewDidLayoutSubviews() {
        if (!didLayoutAlready) {
            didLayoutAlready = true
            
            addStyle(loginGoogleButton, #colorLiteral(red: 0.9254901961, green: 0.3529411765, blue: 0.3058823529, alpha: 1))
            addStyle(loginFacebookButton, #colorLiteral(red: 0.2156862745, green: 0.337254902, blue: 0.6235294118, alpha: 1))
            addStyle(loginButton, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
