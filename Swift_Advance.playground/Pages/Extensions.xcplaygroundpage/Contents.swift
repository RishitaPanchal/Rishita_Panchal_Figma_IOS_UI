import Foundation

extension Int {
    
    var add: Int { return self + 100 }
    var sub: Int { return self - 20 }
    var mul: Int { return self * 5 }
    var div: Int { return self / 20 }

}

print("Addition : ", 20.add)
print("Subtraction : ", 78.sub)
print("Multiplication : ", 45.mul)
print("Division : ", 100.div)


extension Double {

    func toFernheit() -> Double {
        return ((self * 1.8000) + 32)
    }
    
    func toCelsius() -> Double {
        return ((self - 32) * 1.8000)
    }

}

print("\nConversions->")
var celsiusTemp: Double = 15
var fernheitTemp: Double = 68
print("Celsius to fernheit temp : \(celsiusTemp.toFernheit())")
print("Fernheit to celsius temp : \(fernheitTemp.toCelsius())")

// Extensions using mutating function
extension String {

    mutating func trim()  {
        self = self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

}

var message = " Hello! I am learning a swift "
print("\nMessage with extra spaces : ", message)
message.trim()
print("Trimmed message : ", message)

var message1 = " Hello!\n I am learning a swift "
print(message1)
var modifiedMessage = message.trimmed()
print("Modified message in another copy of variable : ", modifiedMessage)

// Extension on custom types struct
struct Employee {
    
    var empId: Int
    var empName: String
    var empSalary: Int
    var revisedSalary: Int
    
    //custom init inside struct will disable memberwise initializer
    /*init(empId: Int, empName: String, empSalary: Int) {
        self.empId = empId
        self.empName = empName
        self.empSalary = empSalary
        self.revisedSalary = empSalary + 2000
    }*/
    func dispDetails() {
        print("\nEmployee Id : \(empId)\nEmployee name: \(empName)\nEmployee old salary: \(empSalary)\nEmployee revised salary: \(revisedSalary)")
    }
    
}
extension Employee {
    
    init(empId: Int, empName: String, empSalary: Int) {
        self.empId = empId
        self.empName = empName
        self.empSalary = empSalary
        self.revisedSalary = empSalary + 2000
    }
    
}

let emp = Employee(empId: 101, empName: "Rishita",empSalary: 30000)
emp.dispDetails()

let emp1 = Employee(empId: 102, empName: "Hely",empSalary: 28000, revisedSalary: 31500)
emp1.dispDetails()

extension String {

    subscript (i: Int) -> Character {
        let i = self.index (self.startIndex, offsetBy: 3)
        return self[i]
    }

}

let string1 = "WORLD"
print(string1[3])

