//
//  UIView+extension.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-23.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviewLayout(_ view: UIView){
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
