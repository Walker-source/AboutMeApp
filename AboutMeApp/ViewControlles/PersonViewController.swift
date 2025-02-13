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
    var user: User!
    
// MARK: - Private Properties
    private var userImage: UIImage!
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personNameLabel.text = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        companyLabel.text = user.person.company.company
        departmentLabel.text = user.person.company.department
        positionLabel.text = user.person.company.position
        
        userImage = UIImage(
            named: user.person.company.biography.userPhoto.image
        )
        userPhotoView.image = userImage
        userPhotoView.layer.borderWidth = 3
        userPhotoView.layer.borderColor = CGColor(gray: 0.3, alpha: 1.0)
        userPhotoView.layer.cornerRadius = userPhotoView.frame.width / 2
    }
    
 // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let bioViewCntroller = segue.destination as? BioViewController
//        bioViewCntroller?.biography = personBio
//    }
}
