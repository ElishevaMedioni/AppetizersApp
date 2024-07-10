//
//  User.swift
//  AppetizersApp
//
//  Created by Elisheva Medioni on 09/06/2024.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
