//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 08.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
//    MARK: - IB Outlets
    @IBOutlet private var userTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
//    MARK: - Private Properties
    private let user = "1"
    private let password = "1"
    
//    MARK: - Navigation
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.welcomeUserName = userTextField.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userTextField.text == user, passwordTextField.text == password else {
            incorrectLoginAndPasswordAlert(
                withTitle: "Incorrect login or password",
                andMessage: "Please, enter correct login and password."
            )
            
            return false
        }
        return true
    }
    
//    MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserNameButtonDidTaped() {
        nameAndPasswordHelpAlert(
            withTitle: "Ooops",
            andMessage: "Your name: \(user)"
        )
    }
    
    @IBAction func fogotPasswordButtonDidTaped() {
        nameAndPasswordHelpAlert(
            withTitle: "Ooops",
            andMessage: "Your password: \(password)"
        )
    }
}

//  MARK: - Alerts
private extension LoginViewController {
    func incorrectLoginAndPasswordAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel) {_ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func nameAndPasswordHelpAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
