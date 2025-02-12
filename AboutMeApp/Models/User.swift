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
            position: "Freelance",
            biography: """
   Ничего не понимающий дед. Но очень старающийся. 
   Родился в Крыму и прожил там 29 лет. Затем переехал в Краснодар, где успешно обосновался. Но затем пришлось снова переехать. В этот раз в Тбилиси. Пожив там чуть больше года очень сильно полюбил Грузию. По определенным обстоятельствам пришлось вернуться. Но очень хочется обратно. 
   Работаю в геймдеве лет 15 на позиции 3Д художника. Все хорошо, но вот попробовал прогать и очень зашло. Решил стать на эту "кривую" дорожку. 
""",
            image: "Denis"
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
    let biography: String
    let image: String
}
