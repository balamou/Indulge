//
//  CreateAccountView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CreateAccountView: BackButtonView {
    
    lazy var createAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Create an Account"
        label.textAlignment = .center
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        
        return label
    }()
    
    lazy var fullNameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Full name"
        
        return textField
    }()
    
    lazy var emailField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        
        return textField
    }()
    
    lazy var phoneNumberField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Phone number"
        
        return textField
    }()
    
    lazy var passwordField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        
        return textField
    }()
    
    lazy var confirmPasswordField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm password"
        
        return textField
    }()
    
    lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("NEXT", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
        
        static func setCreateAccountLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
            label.widthAnchor.constraint(equalToConstant: 194).isActive = true
            label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setFullNameField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 18).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 194).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setEmailField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 194).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setPhoneNumberField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 194).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setPasswordField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 38).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 194).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setConfirmPassword(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 194).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setNextButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(createAccountLabel)
        self.addSubviewLayout(fullNameField)
        self.addSubviewLayout(emailField)
        self.addSubviewLayout(phoneNumberField)
        self.addSubviewLayout(passwordField)
        self.addSubviewLayout(confirmPasswordField)
        self.addSubviewLayout(nextButton)
        
        Constraints.setCreateAccountLabel(createAccountLabel, self)
        Constraints.setFullNameField(fullNameField, createAccountLabel)
        Constraints.setEmailField(emailField, fullNameField)
        Constraints.setPhoneNumberField(phoneNumberField, emailField)
        Constraints.setPasswordField(passwordField, phoneNumberField)
        Constraints.setConfirmPassword(confirmPasswordField, passwordField)
        Constraints.setNextButton(nextButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
