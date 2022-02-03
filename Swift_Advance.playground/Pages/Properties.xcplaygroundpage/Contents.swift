struct Cource {
    var courceName: String
    let courceId: Int
}
var stdStruct1 = Cource(courceName: "Android & ios", courceId: 221)
print(stdStruct1.courceName)
stdStruct1.courceName = "React native js"
print(stdStruct1.courceName)
//Below statement will wont be work
//std.courceId = 222

//Constant structure instance dont allow us to modify value
let stdStruct2 = Cource(courceName: "IoT", courceId: 212)
print(stdStruct2.courceName)
//stdStruct2.courceName = "Flutter"

//Lazy stored property
struct ComplexTask {
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
    lazy var complexTask: Int = ComplexTask.doComplexTask()
}

var objEmp = Employee()
print("Object created")
//print(objEmp.complexTask)

//computed properties
struct AreaOfCircle {
    var radius: Double = 0
    let pi = 3.14
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
        set {
            radius = newValue / Double.pi
        }
    }
}
var objArea = AreaOfCircle()
objArea.radius = 5
print("Area of circle is \(objArea.area)")

objArea.area = 25
print("Radius : \(objArea.radius)")

//Property observer
var message = "nil" {
    willSet {
        print("New value : \(newValue), current value: \(message)")
    }
    didSet {
        print("Old value : \(oldValue), current value: \(message)")
    }
}
message = "Good evening"
