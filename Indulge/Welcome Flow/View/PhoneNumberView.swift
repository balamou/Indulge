//
//  PhoneNumberView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberView: BackButtonView {
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.insertText("+1 (613) XXX XXX")
        
        return textField
    }()
    
    lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("NEXT", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
       
        static func setPhoneNumberTextField(_ textField: UITextField, _ view: UIView) {
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            textField.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 187).isActive = true
            textField.widthAnchor.constraint(equalToConstant: 134).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 26).isActive = true
        }
        
        static func setNextButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant: 396).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(phoneNumberTextField)
        self.addSubviewLayout(nextButton)
        
        Constraints.setPhoneNumberTextField(phoneNumberTextField, self)
        Constraints.setNextButton(nextButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
