//MARK: Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters

struct Animal {
    
    var color: String = ""
    var name: String = ""
    var age: Int = 0

}

//Memberwuse initializer
//object initialized without parameter
var animal = Animal()
print("Name of animal : ", animal.name)
print("Color of animal : ", animal.color)
print("Age of animal : ", animal.age)

//Object initialized with parameter
var animal1 = Animal(color: "black", name: "Liku", age: 30)
print("\nName of animal : ",animal1.name)
print("Color of animal : ", animal1.color)
print("Age of animal : ",animal1.age)
