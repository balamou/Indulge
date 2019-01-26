//
//  PhoneNumberView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberView: BackButtonView {
    
    lazy var enterPhoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your phone number"
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25.0)
        
        return label
    }()
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.insertText("+1 (613) XXX XXX")
        textField.font = UIFont(name: "BrandonGrotesque-Regular", size: 20.0)
        
        return textField
    }()
    
    lazy var decorWhiteView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    lazy var canadianFlagImageView: UIImageView = {
        var imageView = UIImageView(image: Images.canadianFlagImage)
        
        return imageView
    }()
    
    lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("NEXT", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
        
        static func setEnterPhoneNumberLabel(_ label: UILabel, _ view: UIView) {
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 118).isActive = true
            label.widthAnchor.constraint(equalToConstant: 262).isActive = true
            label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
        
        static func setPhoneNumberTextField(_ textField: UITextField, _ neighbor: UIView, _ view: UIView) {
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 14).isActive = true
            textField.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor).isActive = true
            textField.leftAnchor.constraint(equalTo: neighbor.rightAnchor, constant: 18).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 29).isActive = true
        }
        
        static func setDecorWhiteView(_ view: UIView, _ neighbor: UIView, _ secondaryView: UIView) {
            view.topAnchor.constraint(equalTo: neighbor.bottomAnchor, constant: 13).isActive = true
            view.heightAnchor.constraint(equalToConstant: 57).isActive = true
            view.leftAnchor.constraint(equalTo: secondaryView.leftAnchor).isActive = true
            view.rightAnchor.constraint(equalTo: secondaryView.rightAnchor).isActive = true
        }
        
        static func setCanadianFlagImageView(_ imageView: UIImageView, _ view: UIView) {
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 38).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 38).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
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
        
        self.addSubviewLayout(enterPhoneNumberLabel)
        self.addSubviewLayout(decorWhiteView)
        self.addSubviewLayout(canadianFlagImageView)
        self.addSubviewLayout(phoneNumberTextField)
        self.addSubviewLayout(nextButton)
        
        Constraints.setEnterPhoneNumberLabel(enterPhoneNumberLabel, self)
        Constraints.setDecorWhiteView(decorWhiteView, enterPhoneNumberLabel, self)
        Constraints.setCanadianFlagImageView(canadianFlagImageView, decorWhiteView)
        Constraints.setPhoneNumberTextField(phoneNumberTextField, canadianFlagImageView, decorWhiteView)
        Constraints.setNextButton(nextButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
