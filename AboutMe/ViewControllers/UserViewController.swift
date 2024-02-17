//
//  UserViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 13/2/24.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet{
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var studiesLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
     //   photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        studiesLabel.text = user.person.studies
        positionLabel.text = user.person.position
        hobbiesLabel.text = user.person.hobbies
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioUserVC = segue.destination as? BioUserViewController
        bioUserVC?.user = user
    }
}


