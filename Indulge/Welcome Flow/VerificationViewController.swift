//
//  VerificationViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class VerificationViewController: UIViewController {
    var verificationView: VerificationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        verificationView = VerificationView(frame: self.view.frame)
        self.view = verificationView
        
        verificationView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        verificationView.codeTextField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        verificationView.codeTextField.becomeFirstResponder()
    }
    
    @objc func nextButtonTapped(){
        // TODO: 1. Check if entered passcode is correct
        navigationController?.pushViewController(CreateAccountViewController(), animated: true)
    }
}
