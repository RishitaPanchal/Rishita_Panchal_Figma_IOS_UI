// MARK: Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class Animal {
    
    var color: String = "Black"
   
    func animalDetails() {
        print("Color : \(color)")
    }
    
}

class Dog: Animal {
    
    var breed: String
    init(breed: String) {
        self.breed = breed
    }
   
    func dogDetails() {
        print("\nDetails of Dog : ")
        animalDetails()
        print("Breed : \(breed) ")
    }

}

class Cat: Animal {

    var age: Int
    init(age: Int) {
        self.age = age
    }
    
    func catDetails() {
        print("\nDetails of cat : ")
        animalDetails()
        print("Breed: \(age) ")
    }

}

var d = Dog(breed: "Husky")
var c = Cat(age: 5)
d.dogDetails()
c.catDetails()
