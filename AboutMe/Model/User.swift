//
//  UserModel.swift
//  AboutMe
//
//  Created by Carlos Garcia Perez on 13/2/24.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
            
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var fullName: String {"\(name) \(surname)"}
    let photo: String
    let studies: String
    let position: String
    let hobbies: String
    let biography: String
    
    static func getPerson() -> Person {
        Person(
            name: "Carlos",
            surname: "Garcia",
            photo: "Carlos Garcia",
            studies: "Landscape Designer",
            position: "Business Developer Manager",
            hobbies: "Music, Gaming, Animals",
            biography: " Born in Barcelona, now proudly calling Saint Petersburg, Russia my home. As a landscaper and parks designer, I've sculpted green spaces with creativity and precision. My design programs included Photoshop, Figma, SketchUp, Corel Draw, and more. I embarked on my programming way several years ago, initially crafting websites in PHP and HTML. Over time, I ventured into blogging and created a couple of websites using WordPress, modifying CSS, HTML. It started as a hobby, but my fascination with coding continued to grow. Currently, my sights are set on becoming a professional iOS developer. I'm committed to mastering the iOS development and turning my passion into a career."
        )
    }
}


