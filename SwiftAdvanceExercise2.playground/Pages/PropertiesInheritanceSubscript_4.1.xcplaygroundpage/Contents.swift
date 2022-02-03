//MARK: 1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class

class Student {
    
    private var yearOfStudy: Int
   
    init() {
        self.yearOfStudy = 2016
    }
    
    func dispChanges() {
        yearOfStudy = 2017
        print("Year of student : ",yearOfStudy)
    }
    
}

let std = Student()
std.dispChanges()
