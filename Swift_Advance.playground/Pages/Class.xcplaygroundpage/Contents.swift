//---Simple class example--------------
class Animal {
    
    var color: String
    var age: Int
    
    init(_ color: String,_ age: Int) {
        self.color = color
        self.age = age
    }
    
    func eat() {
        print("ANimals are eating")
    }
    
}
// : is used for extending a super class
class Dog: Animal {
    
    var breed: String
    init(_ color: String, _ age: Int, _ breed: String) {
        self.breed = breed
        super.init(color, age)
    }
    
    override func eat() {
        print("Dog is eating")
    }
    
}

var objDog = Dog("Black", 22, "labra")
print("Color : ", objDog.color)
print("Age : ", objDog.age)
print("Breed : ", objDog.breed)
objDog.eat()

