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
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.exitButtonImage, for: .normal)
        button.setImage(Images.exitButtonTappedImage, for: .highlighted)
        
        return button
    }()
    
    class Constraints {
        
        static func setCartLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
        }
        
        static func setCloseButton(_ button: UIButton, _ view: UIView, _ leftNeighbour: UIView) {
            button.centerYAnchor.constraint(equalTo: leftNeighbour.centerYAnchor).isActive = true
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
            button.widthAnchor.constraint(equalToConstant: 24).isActive = true
            button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(cartLabel)
        self.addSubviewLayout(closeButton)
        
        Constraints.setCartLabel(cartLabel, self)
        Constraints.setCloseButton(closeButton, self, cartLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

