//
//  OrderView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-28.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class OrdersView: UIView {
    
    lazy var ordersLabel: UILabel = {
        let label = UILabel()
        label.text = "Orders"
        label.textAlignment = .center
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        
        return label
    }()
   
    class Constraints {
        
        static func setOrdersLabel(_ label: UILabel, _ view: UIView) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
            label.widthAnchor.constraint(equalToConstant: 194).isActive = true
            label.heightAnchor.constraint(equalToConstant: 36).isActive = true
        }
      
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(ordersLabel)
        
        Constraints.setOrdersLabel(ordersLabel, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
