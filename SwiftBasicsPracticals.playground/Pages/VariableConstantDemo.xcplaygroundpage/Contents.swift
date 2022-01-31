//----------------Working with variables------------------
var stringMessage = "Hello world!!"
var numInt = 2

//Declaration of multiple variable in single line
var numInt1 = 10, numInt2 = 20
print(numInt1 + numInt2)

var (numFloat1, numFloat2) = (20.5, 32.7)
print(numFloat1 + numFloat2)

//Can reassign the value to variable
numInt2 = 5
//str = 5 Swift is type safe language you can not pass Int in type of STring
print(stringMessage)

//Type annotation
//Explicit type declaration
var animal, bird, insect: String
animal = "Dog"
bird = "Cat"
insect = "Ant"

print("Animal : \(animal), bird : \(bird), Insect : \(insect)")
print(UInt8.min)
print(Int.max)

//----------------Working with Constants------------------
let stringConst = "Hello world!!"
// semicolon should be there when two lines in same line
let pi = 3.14; print(pi)
// It automatically infer double type
let pi1 = 3 + 0.14
print(pi1)
//Constant won't allow us to reassign to the var
//pi = 3.15

//----------------Working with literels------------------
print("Integer literels-->")
var decimalNo = 107
var binaryNo = 0b1111
var octalNo = 0o41
var hexaNo = 0x141
var numDouble: Double
//Type conversion
numDouble = Double(numInt1)
print(numDouble)

print("Decimal : \(decimalNo), Binary :\(binaryNo), Octal : \(octalNo), hexaNo : \(hexaNo)")

//Reserved keyword as variable name
var `class` = "Valid variable name"
print(`class`)

//Alias to the string type
typealias name = String
var name1: name = "Rishita"
