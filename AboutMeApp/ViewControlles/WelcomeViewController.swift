//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 09.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet var welcomeUserNameLabel: UILabel!

// MARK: - Public Properties
    var user: User!
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserNameLabel.text = "Welcome, " + user.login  + "!"
    }
}
