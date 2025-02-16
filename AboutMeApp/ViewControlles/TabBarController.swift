//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 16.02.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    var user:User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    private func transferData() {
        viewControllers?.forEach {
            let welcomVC = $0 as? WelcomeViewController
            welcomVC?.user = user
            
            let navigationVC = $0 as? UINavigationController
            let personVC = navigationVC?.topViewController as? PersonViewController
            personVC?.user = user
        }
    }
}
