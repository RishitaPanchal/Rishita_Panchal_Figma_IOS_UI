//MARK: Create one structure to show usage of mutating function in swift.
struct Animal {
    
    var animalName: String = "Dog"
    var animalAge: Int = 9
    
    //mutating allow us to change self properties
    mutating func modifyAnimalDetails() {
        animalName = "cat"
        animalAge = 4
    }
    
    func printDetails() {
        print("\nAnimal Name: \(animalName)\nAnimal Age: \(animalAge)")
    }
    
}

var animal = Animal()
animal.printDetails()
animal.modifyAnimalDetails()
animal.printDetails()

