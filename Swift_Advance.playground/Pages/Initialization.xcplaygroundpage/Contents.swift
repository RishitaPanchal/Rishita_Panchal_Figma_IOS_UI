// Default initialization
class Dog {
   
    var breed: String
    var age: Int
    var bark: Bool
    
    init() {
        breed = "Labra"
        age = 3
        bark = false
    }

}

var objDog = Dog()
print(objDog.breed)

//Parameterizad initialization
class Dog1 {
    
    let breed: String
    var age: Int
    var name: String?
    
    init(dogName: String, dogAge: Int, dogBreed: String) {
        self.name = dogName
        self.age = dogAge
        self.breed = dogBreed
    }
    
    init(_ age: Int,_ breed: String) {
        self.age = age
        self.breed = breed
    }
    
}

var objDog1 = Dog1(dogName: "Liku", dogAge: 3, dogBreed: "Husky")
print("Breed of \(objDog1.name) is \(objDog1.breed) and is of \(objDog1.age) years!!")

var objDog2 = Dog1(3, "Pug")
print("Dog breed \(objDog2.breed) is of \(objDog2.age) years.. But name is : \(objDog2.name) bcz not decided till yet")


//Memberwise initializer dont require custom initializer
struct Animal {

    var age: Int = 5
    var color: String = "Black"

    func animalProperties() {
        print("Animals : age \(age) & color \(color)")
    }
    
}

var animal = Animal(age:6, color: "White")
animal.animalProperties()

var animal1 = Animal(color: "Brown")
animal1.animalProperties()


//Initializer deeligation
struct ScienceGrades {

    var markSci1 = 0.0, markSci2 = 0.0, avg = 0.0

}

struct MathsGrades {

    var marksMaths1 = 0.0, marksMaths2 = 0.0, avg = 0.0

}

struct block {

    var scienceObj = ScienceGrades()
    var mathsObj = MathsGrades()

    init(science: ScienceGrades, maths: MathsGrades) {
          self.scienceObj = science
          self.mathsObj = maths
    }

    init(avgSci: ScienceGrades, avgMath: MathsGrades) {
           let aSci = avgSci.markSci1 + avgSci.markSci2
           let aMath = avgMath.marksMaths1 + avgMath.marksMaths2
           self.init(science: ScienceGrades(avg: aSci), maths: MathsGrades(avg: aMath))
    }

}

let set2 = block(science: ScienceGrades(markSci1: 23.6, markSci2: 45.2), maths: MathsGrades(marksMaths1: 11.5, marksMaths2: 23.9))
print("Science sem 1 marks : \(set2.scienceObj.markSci1) | Science sem 2 marks : \(set2.scienceObj.markSci2)")
print("Maths sem 1 marks : \(set2.mathsObj.marksMaths1) | Maths sem 2 marks : \(set2.mathsObj.marksMaths2)")

let set3 = block(avgSci: ScienceGrades(markSci1: 23.6, markSci2: 45.2), avgMath: MathsGrades(marksMaths1: 11.5, marksMaths2: 23.9))
print("Science average marks : \(set3.scienceObj.avg)")
print("Maths average marks : \(set3.mathsObj.avg)")

//Failable initializer
struct VerifyAdhaarNum {

    var uidai: String
    
    init?(_ adharNum: String) {
        if adharNum.count < 12 {
            return nil
        }
        uidai = adharNum
    }

}

var adharNumObj = VerifyAdhaarNum("111")
print(adharNumObj?.uidai)

enum OvenHeating {

    case low, medium, high

    init?(symbol: Character) {
        switch symbol {
        case "L":
            self = .low
        case "M":
            self = .medium
        case "H":
            self = .high
        default:
            return nil
        }
    }

}

let objEnum = OvenHeating(symbol: "G")
