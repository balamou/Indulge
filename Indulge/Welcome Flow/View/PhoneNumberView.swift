//
//  PhoneNumberView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberView: UIView {
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.insertText("+1 (613) XXX XXX")
        
        return textField
    }()
    
    class Constraints {
        
        static func getPhoneNumberTextField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(textField, .top, .equal, view, .top, 1.0, 187)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 134)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 26)
            
            return [horizontalCenter, clipBottom, width, height]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.addSublayer(Colors.backround(self.bounds))
        
        self.addSubviewLayout(phoneNumberTextField)
        
        NSLayoutConstraint.activate(Constraints.getPhoneNumberTextField(phoneNumberTextField, self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
