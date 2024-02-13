//
//  BioUserViewController.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 13/2/24.
//

import UIKit

final class BioUserViewController: UIViewController {
    
    //    private let user = User.getUser()
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 20/255,
        blue: 0/255,
        alpha: 0.75
    )
    private let secondaryColor = UIColor(
        red: 210/255,
        green: 105/255,
        blue: 0/255,
        alpha: 0.75
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
