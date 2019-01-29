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
        
        let isUserLogged = true //TODO: jad
        let locationSelected = true //TODO: jad
        
        if (!isUserLogged && !locationSelected) {
            let welcomeViewConroller = WelcomeViewController()
            welcomeViewConroller.delegate = self
            navigationController.viewControllers = [welcomeViewConroller]
        } else if (isUserLogged && !locationSelected){
            // show location
            let locationVC = LocationViewController()
            locationVC.delegate = self
            locationVC.first = false
            navigationController.viewControllers = [locationVC]
        } else if (isUserLogged && locationSelected) {
            // show main in tab VC
            navigationController = setupMain()
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
            let newNavController = setupMain()
            
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
        locationVC.first = false
        navigationController.pushViewController(locationVC, animated: true)
    }
    
    private func setupMain() -> UINavigationController {
        let menuVC = MenuViewController()
        let ordersVC = OrdersViewController()
        let settingsVC = SettingsViewController()
        menuVC.delegate = self
        //ordersVC.delegate = self
        //settingsVC.delegate = self
        
        menuVC.title = "Menu"
        ordersVC.title = "Orders"
        settingsVC.title = "Settings"
        
        let tabViewConroller = UITabBarController()
        tabViewConroller.viewControllers = [menuVC, ordersVC, settingsVC]
        
        let newNavController = UINavigationController()
        newNavController.isNavigationBarHidden = true
        newNavController.viewControllers = [tabViewConroller]
        
        return newNavController
    }
}
