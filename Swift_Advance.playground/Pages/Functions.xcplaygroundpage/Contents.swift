print("\nFunction demo : ")
func sum(_ a: Int, _ b: Int) -> Int {
    return a+b
}
func sub(a: Int, b: Int) -> Int {
    return a-b
}
func mul(a: Int, b: Int) -> Int {
    return a*b
}
func div(firstVal a: Int, by b: Int) -> Int {
    return a/b
}
print("Addition :", sum(10, 20))
print("Subtraction :", sub(a: 20, b: 10))
print("Multiplication :", mul(a: 15, b: 7))
print("Division : ", div(firstVal: 12, by: 3))

print("\nFunction with multiple return value : ")
func calc(x: Int,y: Int) -> (add: Int, sub: Int, mul: Int, div: Int) {
    let add = x + y
    let sub = x - y
    let mul = x * y
    let div = x / y
    //Returning multiple values will be in the form of tupple
    return(add, sub, mul, div)
}
print(calc(x: 50, y: 40))

print("\nOptional Return type :")
func lengthArr(_ array: [Int]) -> Int? {  //Optional allowing to return nill if array is empty
    if array.isEmpty {
        return nil
    }
    return array.count
}
print(lengthArr([10, 20]))

print("\nReturn single statement : ")
func add1(a: Int, b:Int) -> Int {
    //If there is single statement then function will return that
    a+b
}
print(add1(a: 10, b: 5))
print("\nDefault argument : ")
func count(cnt: Int = 3) {
    for _ in 1...cnt {
        print("Hello ")
    }
}

print(count(cnt: 1))
print(count())

print("\nveriadic parameter : ")
func variadicParameter(num: Int...) -> Int {
    return num.count
}
print("Count of number of parameter : ", variadicParameter(num: 1, 2, 3, 4, 5, 6))

print("\nAssigning a function to the variable :")
//Addition act as sum function
var addition: (Int, Int) -> Int = sum
print(addition(2, 3))


print("\nNested function : ")
func nestedFunc(name: String){
    
    print("name = \(name)")
    func greetings(msg: String) -> String{
        return msg
    }
    print(greetings(msg: "Hello from inner function"))
}
nestedFunc(name: "Rishita")


func incrementByTwo(_ result: inout Int) {
   result += 2
}
var num1 = 10
incrementByTwo(&num1)
print(num1)
