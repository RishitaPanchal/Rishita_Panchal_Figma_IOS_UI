//MARK: Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it

class Employee {
    
    private var empId = 102
    private var empName = "Rishita"
    private var empSalary = 30000
    private var empCTCSalary:Int {
        return empSalary - 500
    }
    
    private func printDetails() {
        print("\nEmployee Id: \(empId)\nEmployee name: \(empName)\nEmployee Salary: \(empCTCSalary)")
    }
    
}
var emp = Employee()
// Any of the properties of methods area inaccesible becasue of private
//emp.printDetails()
//print(emp.empName)
