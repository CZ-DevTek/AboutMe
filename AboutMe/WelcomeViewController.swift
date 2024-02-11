//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 10/2/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
}
