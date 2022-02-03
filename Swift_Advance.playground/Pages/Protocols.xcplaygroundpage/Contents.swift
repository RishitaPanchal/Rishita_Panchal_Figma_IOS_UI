import Foundation
protocol Details {
    var fullname: String { get }
    func dispDetails()
}

struct Student: Details {
    var fullname: String
    func dispDetails() {
        print("First Name : \(fullname)")
    }
}
var std = Student(fullname: "Rishita")
std.dispDetails()


class Employee: Details {
    var name: String?
    var surname: String
  
    init(name: String? = "nil", surname: String) {
        self.name = name
        self.surname = surname
    }
    var fullname: String {
        return (name ?? "nil") + " " + surname
    }
    func dispDetails() {
        print("\nFirst Name : \(name ?? "nil")\nsurname: \(surname)\nFull anme : \(fullname)")
    }
    
}
var emp = Employee(name: "Rishita", surname: "Panchal")
emp.dispDetails()

protocol Speed {
    mutating func switchingSpeed()
}

enum CarSpeed: Speed {
    case slow, medium, fast
    mutating func switchingSpeed() {
        switch self {
        case .slow:
            self = .medium
        case .medium:
            self = .fast
        case .fast:
            self = .slow
        }
    }
}
var speed = CarSpeed.slow
speed.switchingSpeed()
speed.switchingSpeed()

protocol Abc{
    init()
}

class A: Abc {
    var a: Int
    required init() {
        a = 10
        print("\na: \(a)")
    }
}
var objA = A()
