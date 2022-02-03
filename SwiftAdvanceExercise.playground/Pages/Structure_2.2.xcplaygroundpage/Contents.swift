//MARK: Create a structure example which demonstrates use of initializer in structures.
struct Employee {
    
    var empId: String = "E101"
    var empName: String
    var empSalary: Int
    
    init(empName: String, empSalary: Int) {
        self.empName = empName
        self.empSalary = empSalary
    }
    
    func empDetails() {
        print("Employee details : ")
        print("\nId: \(empId)\nName: \(empName)\nSalary : \(empSalary)")
    }
    
}

var emp = Employee(empName: "Rishita", empSalary: 33000)
emp.empDetails()
