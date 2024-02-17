//
//  Extension + UIView.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 17/2/24.
//

import UIKit

//Set Background Gradient Color

extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 210/255,
            green: 20/255,
            blue: 0/255,
            alpha: 1
        )
        let secondaryColor = UIColor(
            red: 255/255,
            green: 105/255,
            blue: 0/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
