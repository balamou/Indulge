//
//  BackButtonView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class BackButtonView: UIView {
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Back", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        
        return btn
    }()
    
    class Constraints {
        
        static func getBackButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .leading, .equal, view, .leading, 1.0, 16)
            let clipBottom = NSLayoutConstraint(btn, .top, .equal, view, .top, 1.0, 50)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 100)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 50)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubviewLayout(backButton)
        
        NSLayoutConstraint.activate(Constraints.getBackButton(backButton, self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
