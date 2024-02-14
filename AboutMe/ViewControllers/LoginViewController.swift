//
//  MainViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 10/2/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    let welcomeVC = segue.destination as? WelcomeViewController
                    welcomeVC?.userName = user
        let TabBarVC = segue.destination as? UITabBarController
        TabBarVC?.viewControllers?.forEach { viewController in
        if let homeVC}
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func forgotCredentialsTapped(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Did you forget your user name?", andMessage: "Your name is \(user)")
            : showAlert(withTitle: "Did you forget your password?", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

