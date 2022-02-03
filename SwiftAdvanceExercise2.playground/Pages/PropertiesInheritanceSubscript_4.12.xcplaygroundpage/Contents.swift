//MARK: 12)  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)


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
    
    //MARK: Difference : We can not override static type mthod in subclass
    /*override static func typeMethod1(_ cnt = Int) {
        print("Overrided class func: value of cnt  : \(cnt)")
    }*/
}

TypeMethodClass.typeMethod2(3)
TypeMthodSubclass.typeMethod1(4)

