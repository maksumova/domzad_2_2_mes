//
//  parent.swift
//  domzad_2_2_mes
//
//  Created by Nika Abdulakhatova on 17.01.2023.
//

import Foundation
class User {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}

class Student: User {
    var yearOfAdmission: Int
    let currentYear = 2023
    
    init(firstName: String, lastName: String, yearOfAdmission: Int) {
        self.yearOfAdmission = yearOfAdmission
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func getCourse() {
        if yearOfAdmission > 5 {
            print("студент уже окончил университет")
        } else {
            print(" студент учится на \(currentYear - yearOfAdmission)")
        }
        
      
    }
}


