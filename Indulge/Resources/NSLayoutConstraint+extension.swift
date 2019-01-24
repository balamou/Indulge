//
//  NSLayoutConstraint+extension.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-23.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit


extension NSLayoutConstraint {
    
    convenience init(_ item: Any, _ attribute: NSLayoutConstraint.Attribute, _ relatedBy: NSLayoutConstraint.Relation, _ toItem: Any?, _ attr: NSLayoutConstraint.Attribute, _ multiplier: CGFloat, _ constant: CGFloat){
        self.init(item: item, attribute: attribute, relatedBy: relatedBy, toItem: toItem, attribute: attr, multiplier: multiplier, constant: constant)
   }
    
}
