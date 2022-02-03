//MARK: Create one lazy stored property in a class and show usage of it
class ComplexTask {
    
    static var initialElement = 1
    static var result = 0
    
    static func doComplexTask() -> Int {
        var task:[Int] = []
        for i in initialElement...5000 {
            task.append(i)
        }
        return result
    }
    
}

struct Employee {
    
    //var complexTask: Int = ComplexTask.doComplexTask()  -> Without lazy keyword it first excecute doCOmplextask
    lazy var complexTask: Int = ComplexTask.doComplexTask()

}

var objEmp = Employee()
print("Object created")
