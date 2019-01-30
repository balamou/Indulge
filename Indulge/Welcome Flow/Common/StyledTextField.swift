//
//  StyledTextField.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-27.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class StyledTextField: UITextField {
    
    var didLayoutAlready = false
    let padding = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
    
    func viewDidLayoutSubviews() {
        if (!didLayoutAlready) {
            didLayoutAlready = true
            
            addStyle(self, #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        }
    }
    
    func addStyle(_ textField: UITextField, _ color: UIColor){
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: textField.bounds, cornerRadius: 12.0).cgPath
        shadowLayer.fillColor = color.cgColor
        
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shadowLayer.shadowOpacity = 0.08
        shadowLayer.shadowRadius = 6
        
        textField.layer.insertSublayer(shadowLayer, at: 0)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
