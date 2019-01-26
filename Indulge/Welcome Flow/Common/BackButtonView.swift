//
//  BackButtonView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class BackButtonView: UIView {
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.setImage(Images.backButtonImage, for: .normal)
        
        return btn
    }()
    
    class Constraints {
        
        static func setBackButton(_ btn: UIButton, _ view: UIView) {
            btn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
            btn.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
            btn.widthAnchor.constraint(equalToConstant: 30).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubviewLayout(backButton)
        
        Constraints.setBackButton(backButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
