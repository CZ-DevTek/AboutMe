//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 10/2/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        if let user = user {
            welcomeLabel.text = """
                        Welcome, \(user.login)!
                        My name is \(user.person.fullName)
                        """
        } else {
            welcomeLabel.text = "Welcome!"
        }
    }
}

