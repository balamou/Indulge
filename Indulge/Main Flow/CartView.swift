//
//  CartView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit


class CartView: UIView {
    
    lazy var cartLabel: UILabel = {
        let label = UILabel()
        label.text = "Cart"
        label.textColor = UIColor.black
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        label.textAlignment = .center
        
        return label
    }()
    
    class Constraints {
        
        static func setCartLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(cartLabel)
        
        Constraints.setCartLabel(cartLabel, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

