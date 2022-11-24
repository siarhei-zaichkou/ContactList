import Foundation


class DataStore {
    static let shared = DataStore()
    var names = [
        "Petr", "Sergey", "Ivan", "Anna", "Alexey", "Anastasiya", "Victoria"
    ]
    var surnames = [
        "Janken", "Butler", "Smith", "Murphy", "Robertson", "Black", "White"
    ]
    var emails = [
        "www@gmail.com", "qqq@gmail.com", "eee@gmail.com", "rrr@gmail.com",
        "ttt@gmail.com", "yyy@gmail.com", "uuu@gmail.com"
    ]
    var phones = [
        "491304449", "699384821", "35795848", "34325344", "803933684",
        "346457568", "134755468"
    ]
}
