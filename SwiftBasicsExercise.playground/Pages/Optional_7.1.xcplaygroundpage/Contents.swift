//Create an example of demonstrating How to declare optionals in swift?
print("\n1-->")
var string1: String?
string1 = "Hello"

var string2:Optional<String> = "nil"
print(string1)
print(string2)

let num1: Int? = Optional.none
print(num1)

//What is force unwrapping in optionals show usage in example.
print("\n2-->")
let num2: Int? = 23
print(num2!)

//Create one example of show usage of optional binding or Create one example using if-let
print("\n3-->")
var num3: Int?
if let unwrapped = num3 {
    print("Optional binding : ", unwrapped)
} else {
    print("string1 contains nothing")
}

//Create one example using guard-let
print("\n5-->")
var name: String?
name = "RIshita"
func function1() {
    guard let name = name else { return }
    print(name)
}
function1()

//Create one example using nil colloison operator
print("\n6-->")
print(name?.count ?? "Nil")
