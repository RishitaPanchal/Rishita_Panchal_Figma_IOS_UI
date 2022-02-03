struct Person {
    
    var name: String
    var gender: String
    var age: Int

    var joe = [Any]()
    var herry = [Any]()
    
    init(name: String, gender: String, age: Int) {
        self.name = name
        self.gender = gender
        self.age = age
    }
    
}

var person1 = Person(name: "Joe", gender: "Male", age: 22)
var person2 = Person(name: "Herry", gender: "Male", age: 28)

person1.joe.append(person1.name)
person1.joe.append(person1.gender)
person1.joe.append(person1.age)

person2.herry.append(person2.name)
person2.herry.append(person2.gender)
person2.herry.append(person2.age)

print("Details of joe :")
print("Name: \(person1.joe[0]) \nGender: \(person1.joe[1]) \nAge: \(person1.joe[2])")
print("\nDetails of herry :")
print("Name: \(person2.herry[0]) \nGender: \(person2.herry[1]) \nAGe: \(person2.herry[2]) ")
