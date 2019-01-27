//
//  LocationViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    var locationView: LocationView!
    var stickToBottom: NSLayoutConstraint?
    var first = true // to avoid visual lag
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationView = LocationView(frame: self.view.frame)
        self.view = locationView
        
        locationView.doneButton.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        stickToBottom = locationView.doneButton.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        stickToBottom?.isActive = true
    }
    
    @objc func doneButtonTapped() {
        // TODO: 1. Check if location selected
        // TODO: 2. Open Menu View Controller
        navigationController?.pushViewController(MenuViewController(), animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        locationView.addNewAddressTextField.becomeFirstResponder()
    }
    
    @objc func keyboardWillShow(notification: NSNotification){
        if (!first) {
            adjustingHeight(true, notification: notification)
        }
        first = false
    }
    
    @objc func keyboardWillHide(notification: NSNotification){
        if (!first) {
         adjustingHeight(false, notification: notification)
        }
        first = false
    }
    
    func adjustingHeight(_ show: Bool, notification:NSNotification) {
        var userInfo = notification.userInfo!
        let keyboardFrame: CGRect = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let animationDurarion = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        let changeInHeight = show ? -keyboardFrame.height : 0
        self.stickToBottom?.constant = changeInHeight
        
        UIView.animate(withDuration: animationDurarion, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
