// MARK: This demo contains struct example as well as how struct and class can differ

class MacBook {
    
    var color: String
    var yearOfPurchasing: Int
    
    init(_ color: String, _ yearOfPurchasing: Int) {
        self.color = color
        self.yearOfPurchasing = yearOfPurchasing
    }
    
}

let mbook = MacBook("Gray", 2018)
let mbook2 = mbook
//Here i changed the  property color using refference object bt it reflect to the actual one
mbook2.color = "white"
print(mbook.color)

struct Iphone {

    var color: String
    var yearOfPurchasing: Int

    init(_ color: String, _ yearOfPurchasing: Int) {
        self.color = color
        self.yearOfPurchasing = yearOfPurchasing
    }
}

var iphone1 = Iphone("Jet black", 2016)
var iphone2 = iphone1
iphone2.color = "Rose gold"
print(iphone1.color)

//Automatic memberwise initializer
//Class must need init to initializing a member where struct is allowed automatic initializing
struct Student {

    var name = ""
    var age = 0

}

var stdObj = Student(name: "Rishita",age: 22)
print(stdObj.name)
print(stdObj.age)

