import UIKit
let printHello = {
    print("Hello")
}
printHello()

let printGreetings: () -> () = {
    print("Welcome!!")
}
printGreetings()

let printGreetings1: () -> (String) = {
    return "Welcome!!"
}
printGreetings1()

//Closures with shorthand refference parameter $0
let printFirstName: (String) -> () = {
    print("Name is : \($0)")
}
printFirstName("Rishita")

let printFullName: (String, String) -> () = {
    print("Full name : \($0) \($1)")
}
printFullName("Rishita", "Panchal")

//Closure with parameter name
let printFullName2: (String, String) -> String = { (orgName: String, role: String) -> String in
    return "Organization name: \(orgName), Assigned role: \(role)"
}
print(printFullName2("Simform solution", "Apps development"))

//Closure with single statement whcihc act as a return statement
let checkEquality: (Int, Int) -> Bool = { (a: Int, b: Int) -> Bool in
    a == b
}
print(checkEquality(10, 20))

let squared = { $0 * $0 }(12)
print(squared)

//Trailling closure
func sayHello(to name: String, exactName: (String) -> ()) {
    let newName = name.uppercased()
    exactName(newName)
}
sayHello(to: "Rishita") { name in
    print("Welcome back..\(name)")
}


func goodMorningGreetings(morning: Bool, name: @autoclosure () -> String) {
    if morning {
        print("Good morning, \(name())")
    }
}

goodMorningGreetings(morning: true, name: "Rishita")

//Function with closure return type
func returnClosure() -> ((String) -> Void) {
    return { name in
        print("Return closure..\(name)")
    }
}
returnClosure()("IamRishita")
var nameReturnClosure = returnClosure()
nameReturnClosure("Rishita")

//capturing value
func counter() -> (() -> Void) {
    var count = 1
    return {
        print("Value of count is : \(count)")
        count += 1
    }
}
let counterFunc = counter()
counterFunc()
counterFunc()

//Optional closure
var optionalClosure: (() -> ())?
optionalClosure = {
    print("optional")
}
//optionalClosure = nil
if let closure = optionalClosure {
    closure()
}
//Non escaping closure
func nonescaping(closure: ((String) -> Void)) {
    print("\nHello!!")
    closure("From closure")
    print("good bye!!")
}

nonescaping { (item) in
    print(item)
}

//Escaping closure
func escaping(closure: @escaping ((String) -> Void)) {
    print("\nHello!!")
    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
        closure("From closure")
    }
    print("good bye!!")
}
escaping { (item) in
    print(item)
}


var closureContainer: [() -> Void] = []
func escaping1(closure: @escaping (() -> Void)) {
    print("\nHello!!")
    closureContainer.append(closure)
    print("good bye!!")
}

escaping1 {
    print("Good morning!!")
}
escaping1 {
    print("abc!!")
}

closureContainer[0]()
closureContainer[1]()
