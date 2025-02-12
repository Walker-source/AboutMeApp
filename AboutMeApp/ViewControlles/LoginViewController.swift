//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 08.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet private var userTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
// MARK: - Private Properties
    private let user = User.userCard
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.text = user.login
        passwordTextField.text = user.password
    }
    
// MARK: - Navigation
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            switch viewController {
            case let welcomeVC as WelcomeViewController:
                welcomeVC.welcomeUserName = user.person.name
            case let personVC as PersonViewController:
                personVC.name = user.person.name
                personVC.surname = user.person.surname
                personVC.age = user.person.age
                personVC.company = user.person.company
                personVC.department = user.person.department
                personVC.position = user.person.position
                personVC.personBio = user.person.biography
            default:
                break
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(withTitle: "Incorrect login or password",
                      andMessage: "Please, enter correct login and password.") {
                self.passwordTextField.text = ""
            }
            
            return false
        }
        return true
    }
    
// MARK: - IB Actions
//    Удалить при здиче домашки и сохранить для проекта
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = "\(user.login)"
        passwordTextField.text = "\(user.password)"
    }
    
    @IBAction func getLoginPassword(_ sender: UIButton) {
        showAlert(
            withTitle: "Oops",
            andMessage: "It is \(sender.tag == 0 ? user.login : user.password)"
        )
    }
}

// MARK: - Alerts
private extension LoginViewController {
    func showAlert(
        withTitle title: String,
        andMessage message: String,
        closure: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            closure?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
