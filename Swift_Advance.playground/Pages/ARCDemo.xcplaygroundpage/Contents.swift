// ARC Demo 1
class Student {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func printName() {
        print("Name: \(name)")
    }
    
    deinit {
        print("DEINIT : Your Student class object is not longer in use!!!")
    }
    
}

class Employee {
    
    var empName: String
    init(empName: String) {
        self.empName = empName
    }
    
    func printName() {
        print("Name: \(empName)")
    }
    
    deinit {
        print("DEINIT : Your Employee class object is not longer in use!!!")
    }
    
}

var refferenceStudent: Student?

if(1==1) {
    let objStd = Student(name: "Rishita")
    let objEmployee =  Employee(empName: "Rishita Panchal")
        //Below line will not call deinit of class Student
    refferenceStudent = objStd
    objStd.printName()
    objEmployee.printName()
}
refferenceStudent = nil

//ARC Demo 2
class Dog {

    var dogName: String
    weak var catt: Cat?
    
    init(dogName: String) {
        self.dogName = dogName
    }
    
    func dogDetails() {
        print("DOg name : \(dogName)")
    }
    
    deinit {
        print("DEINIT : DOg")
    }

}

class Cat {

    var catName: String
    var dogg: Dog?
    
    init(catName: String) {
        self.catName = catName
    }
    
    func catDetails() {
        print("Cat name : \(catName)")
    }
    
    deinit {
        print("DEINIT : Cat")
    }

}

if(1 == 1) {
    let dogObj = Dog(dogName: "Liku")
    let catObj = Cat(catName: "Juli")
    //Strong refference cycle It occupies the unncessary memory even they are not being used
    dogObj.catt = catObj
    catObj.dogg = dogObj
}
