//
//  LoginView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LoginView: BackButtonView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        
        return label
    }()
    
    lazy var emailTextField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Email"
        textField.font = UIFont(name: "BrandonGrotesque-Light", size: 18)
        textField.keyboardType = UIKeyboardType.emailAddress
        
        return textField
    }()
    
    lazy var passwordTextField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Password"
        textField.font = UIFont(name: "BrandonGrotesque-Light", size: 18)
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    lazy var continueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("CONTINUE", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
        
        static func setLoginLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
            label.widthAnchor.constraint(equalToConstant: 194).isActive = true
            label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setEmailTextField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 187).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setPasswordTextField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 15).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setContinueButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(loginLabel)
        self.addSubviewLayout(emailTextField)
        self.addSubviewLayout(passwordTextField)
        self.addSubviewLayout(continueButton)
        
        Constraints.setLoginLabel(loginLabel, self)
        Constraints.setEmailTextField(emailTextField, self)
        Constraints.setPasswordTextField(passwordTextField, emailTextField)
        Constraints.setContinueButton(continueButton, self)
    }
    
    func viewDidLayoutSubviews() {
        emailTextField.viewDidLayoutSubviews()
        passwordTextField.viewDidLayoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
