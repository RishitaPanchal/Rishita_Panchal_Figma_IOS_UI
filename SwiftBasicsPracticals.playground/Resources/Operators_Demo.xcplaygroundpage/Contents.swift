//we can initiallize more than one variable using tupple
var (num1, num2) = (20, 10)
print("Value of a is : \(num1)")
print("Value of b is : \(num2)")
print("\nArithmatic operator : ")
print("\(num1) + \(num2) = \(num1 + num2)")
print("\(num1) - \(num2) = \(num1 - num2)")
var multiplication = num1 * num2
print("\(num1) * \(num2) = \(multiplication)")
print("\(num1) / \(num2) = \(num1 / num2)")
//Remainder will depands on num1's sign
print("-9 % 4 = \(-9 % 4)")
print("9 % -4 = \(9 % -4)")

print("\nShort hand operators : ")
var numInt = 10
numInt += 2
print(numInt)
print()

print("\nRelational operator : ")
if num1 > num2 {
    print("\(num1) is greater than \(num2)")
} else {
    print("\(num1) is smaller than \(num2)")
}

if num1 == 20 {
    print("Values matched")
} else {
    print("Does not match")
}

print("\nTernary operator : ")
var result = (num1 > num2 ? num1 : num2)
print(result, "\n")

print("Range operators:")
print("Closed range operator-->")
//Includes strating and ending element
for index in 1...5 {
    //To exclude newline from print() put "" in terminator
    print("\(index) ", terminator: "")
}

print("\nHalf range operator-->")             //Includes starting element but not final element
for index in 1..<5 {
    print(index)
}
