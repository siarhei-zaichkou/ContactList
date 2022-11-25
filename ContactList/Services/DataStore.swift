
class DataStore {
    static let shared = DataStore()
    let names = [
        "Petr", "Sergey", "Ivan", "Anna", "Alexey", "Anastasiya", "Victoria"
    ]
    let surnames = [
        "Janken", "Butler", "Smith", "Murphy", "Robertson", "Black", "White"
    ]
    let emails = [
        "www@gmail.com", "qqq@gmail.com", "eee@gmail.com", "rrr@gmail.com",
        "ttt@gmail.com", "yyy@gmail.com", "uuu@gmail.com"
    ]
    let phones = [
        "491304449", "699384821", "35795848", "34325344", "803933684",
        "346457568", "134755468"
    ]
    
    private init() {}
}
