//
//  UserViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 13/2/24.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet weak var userTitleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var studiesLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    private let user = User.getUser()
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 20/255,
        blue: 0/255,
        alpha: 0.75
    )
    private let secondaryColor = UIColor(
        red: 255/255,
        green: 105/255,
        blue: 0/255,
        alpha: 0.75
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userTitleLabel.text = "\(user.person.name) \(user.person.surname)"
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        studiesLabel.text = user.person.studies
        positionLabel.text = user.person.position
        hobbiesLabel.text = user.person.hobbies
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}


