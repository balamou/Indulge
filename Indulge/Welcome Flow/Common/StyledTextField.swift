//
//  StyledTextField.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-27.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class StyledTextField: UIView {
    
    lazy var label: UILabel = {
        var label = UILabel()
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
