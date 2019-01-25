//
//  PhoneNumberViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-23.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberViewController: UIViewController {
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.insertText("(613) XXX XXX")
        
        return textField
    }()
    
    class Constraints {
        
        static func getPhoneNumberTextField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(textField, .bottom, .equal, view, .bottomMargin, 1.0, -100)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 134)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 26)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        view.addSubviewLayout(phoneNumberTextField)
        NSLayoutConstraint.activate(Constraints.getPhoneNumberTextField(phoneNumberTextField, view))
    }
}
