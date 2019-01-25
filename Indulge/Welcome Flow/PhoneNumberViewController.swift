//
//  PhoneNumberViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-23.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberViewController: UIViewController {
    var phoneNumberView: PhoneNumberView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberView = PhoneNumberView(frame: self.view.frame)
        self.view = phoneNumberView
        
        phoneNumberView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        phoneNumberView.phoneNumberTextField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        phoneNumberView.phoneNumberTextField.becomeFirstResponder()
    }
    
    @objc func nextButtonTapped(){
        // TODO: 1. Send a msg to user's phone
        navigationController?.pushViewController(VerificationViewController(), animated: true)
    }
}
