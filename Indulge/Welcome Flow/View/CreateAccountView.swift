//
//  CreateAccountView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CreateAccountView: BackButtonView {
    
    let texfieldFontSize: CGFloat = 18.0
    
    lazy var createAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Create an Account"
        label.textAlignment = .center
        label.font = UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        
        return label
    }()
    
    lazy var fullNameField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Full name"
        textField.font =  UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        
        return textField
    }()
    
    lazy var emailField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Email"
        textField.font =  UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        textField.keyboardType = UIKeyboardType.emailAddress
        
        return textField
    }()
    
    lazy var phoneNumberField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Phone number"
        textField.font =  UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        textField.keyboardType = UIKeyboardType.phonePad
        
        return textField
    }()
    
    lazy var passwordField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Password"
        textField.font =  UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    lazy var confirmPasswordField: StyledTextField = {
        let textField = StyledTextField()
        textField.placeholder = "Confirm password"
        textField.font =  UIFont(name: "BrandonGrotesque-Light", size: texfieldFontSize)
        textField.isSecureTextEntry = true
        
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
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setEmailField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setPhoneNumberField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setPasswordField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 38).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setConfirmPassword(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 259).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
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
    
    func viewDidLayoutSubviews() {
        fullNameField.viewDidLayoutSubviews()
        emailField.viewDidLayoutSubviews()
        phoneNumberField.viewDidLayoutSubviews()
        passwordField.viewDidLayoutSubviews()
        confirmPasswordField.viewDidLayoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
