//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 09.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeUserNameLabel: UILabel!
    
    var welcomeUserName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserNameLabel.text = "Welcome, " + welcomeUserName + "!"
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 
}
