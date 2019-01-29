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
    
    // TODO: Remove this button from here
    lazy var signOutButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Sign out", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        btn.titleLabel?.textAlignment = .center
        btn.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: .normal)
        
        return btn
    }()
    
    class Constraints {
        
        static func setLocationButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
            btn.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            btn.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        static func setSignOutButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 20).isActive = true
            btn.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            btn.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(locationButton)
        self.addSubviewLayout(signOutButton)
        
        Constraints.setLocationButton(locationButton, self)
        Constraints.setSignOutButton(signOutButton, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
