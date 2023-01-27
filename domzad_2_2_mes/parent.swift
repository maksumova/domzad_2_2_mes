//
//  parent.swift
//  domzad_2_2_mes
//
//  Created by Nika Abdulakhatova on 17.01.2023.
//

import Foundation
//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse() написать на языке свифт

//1) Придумать пример с наследованием с тройной иерархией. То есть 1 родитель, от него наследуется 2 наследника, от 2 наследников наследуются еще по 1 классу. Придумать общие параметры. В main вызвать по 1 объекту каждого класса


//class Parent {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Child1: Parent {
//    var age: Int
//    init(name: String, age: Int) {
//        self.age = age
//        super.init(name: name)
//    }
//}
//
//class Child2: Parent {
//    var occupation: String
//    init(name: String, occupation: String) {
//        self.occupation = occupation
//        super.init(name: name)
//    }
//}
//
//class GrandChild1: Child1 {
//    var salary: Double
//    init(name: String, age: Int, occupation: String, salary: Double) {
//        self.salary = salary
//        super.init(name: name, age: age)
//    }
//}
//
//class GrandChild2: Child2 {
//    var salary: Double
//    init(name: String, age: Int, occupation: String, salary: Double) {
//        self.salary = salary
//        super.init(name: name, occupation: occupation)
//    }
//}
//
//


//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse() написать на языке свифт


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
    let currentYear = Calendar.current.component(.year, from: Date())
    
    init(firstName: String, lastName: String, yearOfAdmission: Int) {
        self.yearOfAdmission = yearOfAdmission
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func getCourse() -> Int {
        return currentYear - yearOfAdmission + 1
    }
}

