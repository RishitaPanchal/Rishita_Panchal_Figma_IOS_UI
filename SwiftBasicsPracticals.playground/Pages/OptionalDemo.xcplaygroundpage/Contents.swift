//Optional String
var subject: String?
//Optional Integer
var number: Int?
subject = "Learning a swift"
//print(numbers!) The name contains nil forced unwrapping is not good method
if subject != nil {
    print(subject!)
} else {
    print("name contains nothing")
}

//Autmatically unwrapping will be done by using following syntax
var subject1: String! = nil
subject1 = "LEARNING A SWIFT"
if subject1 != nil {
    print(subject1!)
    print(subject1.lowercased())
} else {
    print("fname contains nothing")
}

print("\nOptiobnal binding : ")
print("If let : ")
func ifLetDemo(_ name: String?) {
    if let tempVar = name {
        print("Name contains",tempVar)
    } else {
        print("Name ontains nothing")
    }
  //print(tempVar) we can't use tempVar outside if block
}
ifLetDemo(nil)

print("\nGuard let : ")
func guardLetDemo(_ name: String?) {
    guard let unwrapped = name else {
        print("Name contains nothing")
        return
    }
    //we cxan use it after the guard let and else block
    print(unwrapped)
}
guardLetDemo("Hello")

print("\nNil coelesing operator :")
func nilCoelescingDemo(_ name: String?) {
    let result = name ?? "nil"
    print(result)
}
nilCoelescingDemo("Hello")
