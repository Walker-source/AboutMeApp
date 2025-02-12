//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 11.02.2025.
//

import UIKit

final class PersonViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet private var personNameLabel: UILabel!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var ageLabel: UILabel!
    @IBOutlet private var companyLabel: UILabel!
    @IBOutlet private var departmentLabel: UILabel!
    @IBOutlet private var positionLabel: UILabel!
    
    @IBOutlet private var userPhotoView: UIImageView!
    
// MARK: - Public  Properties
    var name: String!
    var surname: String!
    var age: Int!
    var company: String!
    var department: String!
    var position: String!
    var personBio: String!
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personNameLabel.text = name + " " + surname
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = String(age)
        companyLabel.text = company
        departmentLabel.text = department
        positionLabel.text = position
        
        userPhotoView.layer.cornerRadius = userPhotoView.frame.width / 2
    }
    
 // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioViewCntroller = segue.destination as? BioViewController
        bioViewCntroller?.biography = personBio
    }
}
