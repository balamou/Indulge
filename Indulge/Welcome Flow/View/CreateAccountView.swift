//
//  CreateAccountView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CreateAccountView: UIView {
    
    lazy var createAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Create An Account"
        
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
    
    lazy var birthdayField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Birthday"
        
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
        
        static func getCreateAccountLabel(_ textField: UILabel, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .top, 1.0, 40)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getFullNameField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .bottom, 1.0, 18)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getEmailField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .bottom, 1.0, 10)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getBirthdayField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .bottom, 1.0, 10)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getPasswordField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .bottom, 1.0, 38)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getConfirmPassword(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(textField, .top, .equal, view, .bottom, 1.0, 10)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 194)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 36)
            
            return [horizontalCenter, yClipping, width, height]
        }
        
        static func getNextButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let yClipping = NSLayoutConstraint(btn, .top, .equal, view, .top, 1.0, 396)
            let width = NSLayoutConstraint(btn, .width, .equal, view, .width, 1.0, 0)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 55)
            
            return [horizontalCenter, yClipping, width, height]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.addSublayer(Colors.backround(self.bounds))
        
        self.addSubviewLayout(createAccountLabel)
        self.addSubviewLayout(fullNameField)
        self.addSubviewLayout(emailField)
        self.addSubviewLayout(birthdayField)
        self.addSubviewLayout(passwordField)
        self.addSubviewLayout(confirmPasswordField)
        self.addSubviewLayout(nextButton)
        
        NSLayoutConstraint.activate(Constraints.getCreateAccountLabel(createAccountLabel, self))
        NSLayoutConstraint.activate(Constraints.getFullNameField(fullNameField, createAccountLabel))
        NSLayoutConstraint.activate(Constraints.getEmailField(emailField, fullNameField))
        NSLayoutConstraint.activate(Constraints.getBirthdayField(birthdayField, emailField))
        NSLayoutConstraint.activate(Constraints.getPasswordField(passwordField, birthdayField))
        NSLayoutConstraint.activate(Constraints.getConfirmPassword(confirmPasswordField, passwordField))
        NSLayoutConstraint.activate(Constraints.getNextButton(nextButton, self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
