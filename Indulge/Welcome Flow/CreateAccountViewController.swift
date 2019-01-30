//
//  CreateAccountViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
   
    var createAccountView: CreateAccountView!
    weak var delegate: CreateAccountDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAccountView = CreateAccountView(frame: self.view.frame)
        self.view = createAccountView
        
        createAccountView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        createAccountView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createAccountView.fullNameField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        createAccountView.fullNameField.becomeFirstResponder()
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            createAccountView.nextButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -keyboardHeight).isActive = true
        }
    }
    
    @objc func nextButtonTapped() {
        // TODO: 1. check if data in fields is valid
        // TODO: 2. Send request to DB to create a user
        // TODO: 3. if success: open the location's tab
        delegate?.showLocation(self)
    }
    
    @objc func backButtonTapped(){
        delegate?.backButtonTapped(self)
    }
}
