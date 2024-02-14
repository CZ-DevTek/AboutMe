//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 10/2/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var presentationLabel: UILabel!
    
    var userNameTextField: String!
    
    private let user = User.getUser()
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 20/255,
        blue: 0/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 255/255,
        green: 105/255,
        blue: 0/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(userNameTextField ?? "")!"
        presentationLabel.text = "My name is \(user.person.name) \(user.person.surname)"
    }
}
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
