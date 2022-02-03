// MARK: Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class StudentDetails {
    
    var name: String
    var college: String?
    var department: String?
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
    }
    
    init(name: String, department: String) {
        self.name = name
        self.department = department
    }
    
}

var std = StudentDetails(name: "Rishita", college: "VGEC")
var std1 = StudentDetails(name: "Rishita", department: "CE")

print(std.name)
print(std.college ?? "nil")
print(std1.department ?? "nil")
