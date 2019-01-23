//
//  Colors.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import Foundation
import UIKit

class Colors {
    var background: CAGradientLayer!
    let lightBlue = #colorLiteral(red: 0.9529411765, green: 0.9568627451, blue: 0.9764705882, alpha: 1)      // #F3F4F9
    
    
    init() {
        let colorTop = UIColor.white.cgColor
        let colorBottom = lightBlue.cgColor
        
        background = CAGradientLayer()
        background.colors = [colorTop, colorBottom]
        background.locations = [0.0, 1.0]
    }
}
