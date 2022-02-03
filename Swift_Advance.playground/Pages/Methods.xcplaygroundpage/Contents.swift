class InstanceMethods {
    var age = 21
    func method1() {
        print("From instance method1")
    }
   
    func method2(param1: Int) {
        print("From method 2")
    }
    
    func method3(param1 fname: String, _ age: Int) {
        print("From method 3 : \(fname) \(age) ")
    }
    
    func method4(_ age: Int) -> Bool {
        return self.age == age
    }
}

var objMethod = InstanceMethods()
objMethod.method1()
objMethod.method2(param1: 22)
objMethod.method3(param1: "Rishita", 22)

print(objMethod.method4(23))

struct Employee {
    var salary = 35000
    
    //mutating is required when we want to change property of struct ou enum
    mutating func revisingSalary(_ salary: Int) -> Int {
        self.salary = salary
        return self.salary
    }
}

var objEmp = Employee()
print(objEmp.revisingSalary(37000))

struct ModifiedVar {
    var x = 20
    var y = 30
    
    mutating func modification(_ x1: Int, _ y1: Int) {
        self = ModifiedVar(x: x1 + 2, y: y1 + 2)
    }
}

var obj = ModifiedVar()
obj.modification(33, 44)
print(obj.x)
print(obj.y)

enum SpeedCar {
    case slow, medium, fast
    
    mutating func changeSpeed() {
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

var objSpeed = SpeedCar.slow

objSpeed.changeSpeed()
objSpeed.changeSpeed()
objSpeed.changeSpeed()

struct TypeMethodDemo {
    var count = 0
    static func typeMethod1(_ cnt: Int) {
        print("Value of cnt : \(cnt)")
    }
}

TypeMethodDemo.typeMethod1(2)

class TypeMethodClass {
    var cnt = 0
    static func typeMethod1(_ cnt: Int) {
        print("Value of cnt : \(cnt)")
    }
    
    class func typeMethod2(_ cnt: Int) {
        print("Value of cnt : \(cnt)")
    }
}

class TypeMthodSubclass: TypeMethodClass {
    override class func typeMethod2(_ cnt: Int) {
        print("Overrided class func: value of cnt  : \(cnt)")
    }
    
    //We can not override static type mthod in subclass
    /*override static func typeMethod1(_ cnt = Int) {
        print("Overrided class func: value of cnt  : \(cnt)")
    }*/
}

TypeMethodClass.typeMethod2(3)
TypeMthodSubclass.typeMethod1(4)

