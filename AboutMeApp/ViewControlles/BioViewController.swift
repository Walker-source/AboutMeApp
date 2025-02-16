//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 12.02.2025.
//

import UIKit

final class BioViewController: UIViewController {
    @IBOutlet private var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        biographyLabel.text = biography
    }
    
//    @IBAction func backButtonAction(_ sender: UIBarButtonItem) {
//        dismiss(animated: true)
//    }
    
}
