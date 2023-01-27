//
//  main.swift
//  domzad_2_2_mes
//
//  Created by Nika Abdulakhatova on 17.01.2023.
//

import Foundation


//В main вызвать по 1 объекту каждого класса


//let parent = Parent(name: "Ника")
//let child1 = Child1(name: "Ильяр Абулахатов, возраст", age: 2)
//let child2 = Child2(name: "Тимур Абдулахатов,", occupation: "Студент")
//let grandChild = GrandChild1(name: "Саид Абдулахатов, возраст", age: 38, occupation: "Программист", salary: 200  )
//print(parent.name)
//print(child1.name, child1.age)
//print(child2.name, child2.occupation)
//print(grandChild.name, grandChild.age, grandChild.salary)

var student1 = Student(firstName: "Ника", lastName: "Абдулахатова", yearOfAdmission: 2017)
student1.getFullName()
student1.getCourse()
