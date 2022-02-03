//MARK: Try to figure out basic difference between class and structures and give a demo for same.
//Difference 1
class Example {
    
    var a: String
    init(a: String) {
        self.a = a
    }
    
}

let example = Example(a: "Hello")
print(example.a)

//You can make a copy of object using let to change the property of class bcz class is refferennce type
let example1 = example
example1.a = "Hi"
print(example1.a)

struct Examplee {
    
    var a: String
    init(a: String) {
        self.a = a
    }
    
}

let examplee = Examplee(a: "Hello")
print(example.a)

//You have to make a copy of object using var to change the property of struct bcz struct is value type
var examplee1 = example
examplee1.a = "Hi"
print(example1.a)

//Difference 2
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
