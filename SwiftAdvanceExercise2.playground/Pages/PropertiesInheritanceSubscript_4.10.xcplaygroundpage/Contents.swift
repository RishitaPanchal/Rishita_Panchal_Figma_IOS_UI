//MARK:  Create one class inheritance demo to show usage of method overriding

class Person {
    
    var name: String
    var occupation: String
    
    init() {
        name = "Rishita"
        occupation = "Job"
    }
    
    func printDetails() {
        print("Student name: \(name)\nStudent occupation: \(occupation)")
    }

}

class Student: Person {

    var collegeName: String
   
    init(collegeName: String) {
        self.collegeName = collegeName
    }

    override func printDetails() {
        print("\nStudent Details->")
        super.printDetails()
        print("COllge name: \(collegeName)")
    }
    
}

class Employee: Person {
    var companyName: String
    
    init(companyName: String) {
        self.companyName = companyName
    }
    override func printDetails() {
        print("\nEmployee Details->")
        super.printDetails()
        print("Employee name: \(companyName)")
    }
}

var std = Student(collegeName: "VGEC")
std.printDetails()

var emp = Employee(companyName: "Simform solution")
emp.printDetails()

