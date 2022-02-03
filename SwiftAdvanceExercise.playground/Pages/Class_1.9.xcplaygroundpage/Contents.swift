//MARK: reate a person swift class with person name initializer and create one function to greet that person.
class Person {
    
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Hello!🙋🏻‍♀️ \(name)")
    }
    
}
let person = Person(name: "Rishita")
person.greet()
