//
//  UIViewController+extension.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-30.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else { return }
        willMove(toParent: nil)
        removeFromParent()
        view.removeFromSuperview()
    }
}
