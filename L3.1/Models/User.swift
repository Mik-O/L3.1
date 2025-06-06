//
//  User.swift
//  L3.1
//
//  Created by Таня Кожевникова on 07.06.2025.
//

struct User {
    let username: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surnName: String
    let placeOfWork: String
    let age: Int
    let email: String
    let hobby: String
    let aboutPerson: String

}

extension User {
    static func getUser() -> User {
        User(
            username: "User",
            password: "Password",
            person: Person(
                name: "Tim",
                surnName: "Cook",
                placeOfWork: "Apple",
                age: 30, email: "tim@apple.com",
                hobby: "Swift",
                aboutPerson: "Американский топ-менеджер, миллиардер. Генеральный директор компании Apple. Пришёл в компанию в марте 1998 года. Занял должность гендиректора после отставки (в связи с продолжительной болезнью) Стива Джобса 24 августа 2011 года."
            )
        )
    }
}
