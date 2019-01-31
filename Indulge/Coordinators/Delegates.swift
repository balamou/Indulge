//
//  Delegates.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-28.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

protocol WelcomeDelegate: AnyObject {
    func showLogin(_ viewController: WelcomeViewController)
    func showCreateAccount(_ viewController: WelcomeViewController)
}

protocol CreateAccountDelegate: AnyObject {
    func showLocation(_ viewController: CreateAccountViewController)
    func backButtonTapped(_ viewController: CreateAccountViewController)
}

protocol LoginDelegate: AnyObject {
    func showLocation(_ viewController: LoginViewController)
    func backButtonTapped(_ viewController: LoginViewController)
}

protocol LocationDelegate: AnyObject {
    func dismissLocation(_ viewController: LocationViewController)
}

protocol MenuDelegate: AnyObject {
    func showLocation(_ viewController: MenuViewController)
    func showCart(_ viewController: MenuViewController)
}

protocol SettingsDelegate: AnyObject {
    func showWelcome(_ viewController: SettingsViewController)
}

protocol CartDelegate: AnyObject {
    func showPayment(_ viewController: CartViewController)
}
