//MARK: 5)  Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types

class Person {
    
    var id: Int
    var name: String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}

var person = Person(id: 190173107015, name: "Rishita")
var array: [Person] = [
                        Person(id: 190173107015, name: "Rishita"),
                        Person(id: 190173107021, name: "Hiral"),
                        Person(id: 190173107013, name: "Hely"),
                        Person(id: 190173107022, name: "Jinal")
                      ]

for data in array {
    print("ID: \(data.id)\nName: \(data.name)\n")
}
