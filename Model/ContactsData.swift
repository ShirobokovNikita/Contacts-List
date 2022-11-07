//
//  ContactsData.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 05.11.22.
//

struct ContactsData {
    
    static let sharedInstance = ContactsData()
    
    var persons: [Contact]
    
    var avatars = [
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6"
    ]
    
    private var names = [
        "john",
        "Igor",
        "Den",
        "Yakov",
        "Ivan",
        "Max",
        "Angel"
    ]
    
    private var surnames = [
        "Shirob",
        "White",
        "Black",
        "Kuzmin",
        "Petrov",
        "Komarov",
        "Kostin"
    ]
    
    private var emails = [
        "john@ya.ru",
        "igor@ya.ru",
        "den@yandex.ru",
        "yakov@ya.ru",
        "ivan@yandex.ru",
        "max@ya.ru",
        "angel@ya.ru"
    ]
    
    private var phones = [
        "8999234849",
        "54995959",
        "19241028",
        "933097",
        "93409235",
        "028437",
        "827093740"
    ]
    
    init() {
        persons = [Contact]()
        
        names.shuffle()
        surnames.shuffle()
        phones.shuffle()
        emails.shuffle()
        
        for ((avatar, (name, surname)), (phone, email))  in zip(zip(avatars, zip(names, surnames)), zip(phones, emails)) {
            let person = Contact(avatar: avatar, name: name, surname: surname, phone: phone, email: email)
            persons.append(person)
        }
    }
}
