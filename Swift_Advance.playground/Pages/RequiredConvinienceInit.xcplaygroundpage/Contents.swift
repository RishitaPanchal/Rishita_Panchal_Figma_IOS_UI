class A {
    var a: Int
    required init() {
        a = 135
        print("a: \(a)")
    }
}

class B: A {
    var b:Int
    required init() {
        b = 252
        print("B: \(b)")
    }
}

class C: A{ }
var objA = A()
var objB = B()
var objC = C()

// Designated init
class Person {
    var name: String
    var age: Int
    var qualification: String?
    
    // Designated init
    init(age: Int = 10) {
        name = "Rishita"
        self.age = age
    }
    
    //Convinience init
    convenience init(age: Int = 10, qualification: String) {
        self.init()
        self.qualification = qualification
    }
}

let person1 = Person()
print("\nname: \(person1.name)\nAge: \(person1.age)\nQualification: \(person1.qualification ?? "nil")")

let person2 = Person(age: 23, qualification: "BE")
print("\nname: \(person2.name)\nAge: \(person2.age)\nQualification: \(person2.qualification ?? "nil")")
