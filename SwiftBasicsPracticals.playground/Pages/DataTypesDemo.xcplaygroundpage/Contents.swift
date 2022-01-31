var greeting: String = "Hello"
var numInt1: Int = 20
//var n2: Int8 = 129  Gives you an error
var numFloat1: Float = 0.8
var numFloat2: Double = 12.4

print(greeting)
print(numInt1)
print(numFloat1)
print(numFloat2)

//It will print min and max range of datatype
print(Int.min)
print(Int8.max)

var binaryNum = 0b0101
print(binaryNum)

var octalNum = 0o140
print(octalNum)

typealias name = String
var name1: name = "Rishita"

//Due to type safety it wont allow
var numInt3 = 20
//numInt3 = 2.5
