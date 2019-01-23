//
//  UIColor+extension.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat , b: CGFloat){
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
}
