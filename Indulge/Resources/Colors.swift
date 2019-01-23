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
    static let lightBlue = #colorLiteral(red: 0.9529411765, green: 0.9568627451, blue: 0.9764705882, alpha: 1)      // #F3F4F9
    
    static func backround(_ frame: CGRect) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()

        gradientLayer.frame = frame
        gradientLayer.colors = [UIColor.white.cgColor, lightBlue.cgColor]
        
        return gradientLayer
    }
}
