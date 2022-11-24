import Foundation


struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    let email: String
    let phone: String
}

extension Person {
    static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        let data = DataStore.shared
        for _ in data.names {
            let name = data.names.randomElement()!
            data.names.remove(at: data.names.firstIndex(of: name)!)
            guard let surname = data.surnames.randomElement() else { return persons}
            data.surnames.remove(at: data.surnames.firstIndex(of: surname)!)
            guard let email = data.emails.randomElement() else { return persons}
            data.emails.remove(at: data.emails.firstIndex(of: email)!)
            guard let phone = data.phones.randomElement() else { return persons }
            data.phones.remove(at: data.phones.firstIndex(of: phone)!)
            
            persons.append(
                Person(name: name, surname: surname, email: email, phone: phone)
            )
        }
        return persons
    }
}

