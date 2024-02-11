//
//  MainViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 10/2/24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard let userName = userName.text, let password = password.text else {
            return false
        }
        if userName == "User" && password == "User" {
            return true
        } else {
            showAlert(
                withTitle: "Invalid Username or Password",
                andMessage: "Please enter correct username and password."
            )
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    let welcomeVC = segue.destination as? WelcomeViewController
                    welcomeVC?.userName = userName.text
        }
    
    @IBAction func forgotUserTapped() {
        showAlert(
            withTitle: "Did you forget your user name?",
            andMessage: "Your user name is 'User'"
        )
    }
    
    @IBAction func forgotPassTapped() {
        showAlert(
            withTitle: "Did you forget your password?",
            andMessage: "Your password is 'User'"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = ""
        password.text = ""
    }
    
    func showAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(
            okAction
        )
        present(
            alert,
            animated: true
        )
    }
}

