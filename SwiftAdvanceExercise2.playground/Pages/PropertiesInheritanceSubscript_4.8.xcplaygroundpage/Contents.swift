//MARK: 8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance

class Person {
    
    var name: String
    var occupation: String
    
    init() {
        name = "Rishita"
        occupation = "Job"
    }
    
}

class Student: Person {
    
    var collegeName: String
    init(collegeName: String) {
        self.collegeName = collegeName
    }
   
    func studentDetails() {
        print("Student Details->")
        print("Student name: \(name)\nCOllge name: \(collegeName)\nStudent occupation: \(occupation)")
    }

}

class Employee: Person {

    var companyName: String
    init(companyName: String) {
        self.companyName = companyName
    }

    func employeeDetails() {
        print("\nEmployee Details->")
        print("Employee name: \(name)\nEmployee name: \(companyName)\nEmployee occupation: \(occupation)")
    }

}

var std = Student(collegeName: "VGEC")
std.studentDetails()

var emp = Employee(companyName: "Simform solution")
emp.employeeDetails()

