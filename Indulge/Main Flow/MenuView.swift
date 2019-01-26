//
//  MenuView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    lazy var locationButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("75 Laurier Ave", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        btn.titleLabel?.textAlignment = .center
        
        return btn
    }()
    
    class Constraints {
        
        static func setLocationButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
            btn.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            btn.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(locationButton)
        
        Constraints.setLocationButton(locationButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
