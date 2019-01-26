//
//  LocationView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LocationView: UIView {
    
    lazy var doneButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("DONE", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
        
        static func getDoneButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .top, .equal, view, .top, 1.0, 396)
            let width = NSLayoutConstraint(btn, .width, .equal, view, .width, 1.0, 0)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 55)
            
            return [horizontalCenter, clipBottom, width, height]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(doneButton)
        
        NSLayoutConstraint.activate(Constraints.getDoneButton(doneButton, self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

