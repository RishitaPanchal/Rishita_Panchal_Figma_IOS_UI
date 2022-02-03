class Animal {
    
    var color: String
    init(color: String) {
        self.color = color
    }
    
}

class Dog: Animal {
    
    var breed: String
    init(color: String, breed: String) {
        self.breed = breed
        super.init(color: color)
    }
    
}

class Cat: Animal {
    
    var age: Int
    init(color: String, age: Int) {
        self.age = age
        super.init(color: color)
    }
    
}

var animal: [Animal] = [
                        Dog(color: "carbon black", breed: "Husky"),
                        Dog(color: "Brown", breed: "pug"),
                        Cat(color: "White", age: 3),
                        Cat(color: "Brown", age: 5),
                        Dog(color: "Gray", breed: "German Shepherd")
                       ]

var objDogCount = 0
var objCatCount = 0

for obj in animal {
    if obj is Dog {
        objDogCount += 1
    } else if obj is Cat {
        objCatCount += 1
    }
}

print("Number of dog objects are : \(objDogCount)")
print("Number of cat objects are : \(objCatCount)")

var objDog = Dog(color: "Gray", breed: "German Shepherd")
print(objDog is Dog)
print(objDog is Cat)

for objAnimal in animal {
    if let objDog = objAnimal as? Dog {
        print("\(objDog.color) : \(objDog.breed)")
    } else if let objCat = objAnimal as? Cat {
        print("\(objCat.color) : \(objCat.age)")
    }
}

let downCast1 = animal[0] as! Dog
print(downCast1.color)
    
let upCast2 = downCast1 as Animal
print(upCast2.color)

var anyArray = [Any]()

anyArray.append(1)
anyArray.append(22.5)
anyArray.append(false)
anyArray.append(2.3)
anyArray.append(Dog(color: "offWHite", breed: "papilon"))
let optionalInt: Int? = 3
anyArray.append(optionalInt as Any)

for items in anyArray {
    switch items {
        case let asInt as Int:
            print("Int : \(asInt)")
        case let asDouble as Double where asDouble > 5:
            print("Double : \(asDouble)")
        case let asBool as Bool:
            print("Bool: \(asBool)")
        case is Double:
            print("some other double value that I don't want to print")
        case let dog as Dog:
            print("Dog obj : \(dog.breed)")
        default:
            print("Nothing ")
    }
}
