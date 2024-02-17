//
//  BioUserViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 13/2/24.
//

import UIKit

final class BioUserViewController: UIViewController {
    

    @IBOutlet weak var bioDescriptionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        bioDescriptionLabel.text = user.person.biography
        title = "\(user.person.fullName) Bio"
    }
}
