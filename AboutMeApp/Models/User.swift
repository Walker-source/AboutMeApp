//
//  User.swift
//  AboutMeApp
//
//  Created by Denis Lachikhin on 11.02.2025.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static let userCard = User(
        login: "Denis",
        password: "Password",
        person: Person(
            name: "Денис",
            surname: "Лачихин",
            age: 38,
            company: "InfiniteArtSolutions",
            department: "3D",
            position: "Freelance"
        )
    )
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let department: String
    let position: String
}
