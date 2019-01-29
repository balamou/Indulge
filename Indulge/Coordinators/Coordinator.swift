//
//  Coordinator.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-27.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator, WelcomeDelegate, CreateAccountDelegate, LoginDelegate, LocationDelegate, MenuDelegate {
  
    let window: UIWindow
    var navigationController: UINavigationController
    
    
    init(window: UIWindow) {
        self.window = window
        navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        
        let isUserLogged = false  //TODO: jad
        let locationSelected = false //TODO: jad
        
        if (!isUserLogged && !locationSelected) {
            let welcomeViewConroller = WelcomeViewController()
            welcomeViewConroller.delegate = self
            navigationController.pushViewController(welcomeViewConroller, animated: true)
        } else if (isUserLogged && !locationSelected){
            // show location
        } else if (isUserLogged && locationSelected) {
            // show main in tab VC
        }
    }
    
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    // MARK: Welcome
    func showLogin(_ viewController: WelcomeViewController) {
        let loginVC = LoginViewController()
        loginVC.delegate = self
        navigationController.pushViewController(loginVC, animated: true)
    }
    
    func showCreateAccount(_ viewController: WelcomeViewController) {
        let createVC = CreateAccountViewController()
        createVC.delegate = self
        navigationController.pushViewController(createVC, animated: true)
    }
    
    // MARK: Create Acount
    func showLocation(_ viewController: CreateAccountViewController) {
        let locationVC = LocationViewController()
        locationVC.delegate = self
        navigationController.pushViewController(locationVC, animated: true)
    }
    
    func backButtonTapped(_ viewController: CreateAccountViewController) {
        navigationController.popViewController(animated: true)
    }
    
    // MARK: Login
    func showLocation(_ viewController: LoginViewController) {
        let locationVC = LocationViewController()
        locationVC.delegate = self
        navigationController.pushViewController(locationVC, animated: true)
    }
    
    func backButtonTapped(_ viewController: LoginViewController) {
        navigationController.popViewController(animated: true)
    }
    
    // MARK: Location
    func dismissLocation(_ viewController: LocationViewController) {
        
        if !viewController.doNotSetRoot {
            let menuVC = MenuViewController()
            let settingsVC = WelcomeViewController()
            menuVC.delegate = self
            
            menuVC.title = "Menu"
            settingsVC.title = "Settings"
            
            let tabViewConroller = UITabBarController()
            tabViewConroller.viewControllers = [menuVC, settingsVC]
            
            let newNavController = UINavigationController()
            newNavController.isNavigationBarHidden = true
            newNavController.viewControllers = [tabViewConroller]
            
            window.switchRootViewController(newNavController, animated: true, completion: {
                self.navigationController = newNavController
            })
        } else {
            navigationController.popViewController(animated: true)
        }
        
    }
    
    // MARK: menu
    func showLocation(_ viewController: MenuViewController) {
        let locationVC = LocationViewController()
        locationVC.delegate = self
        locationVC.doNotSetRoot = true
        navigationController.pushViewController(locationVC, animated: true)
    }
}
