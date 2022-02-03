//MARK:  11) Create one swift class to show usage of type method

class Student {
    
    class func printDetails(_ name: String) {
        print("Name : \(name)")
    }
    
}

//In a type methods instances are don't require to methods
Student.printDetails("Rishita")
Student.printDetails("Hiral")
