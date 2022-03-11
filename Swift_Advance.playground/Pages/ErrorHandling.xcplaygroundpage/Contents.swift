//Declaration of error
enum ErroHandling: Error {
    case divideByZero
    case urlEMpty
    case insufficientFund
    case valuesNotEqual
    case passwordEmpty
    case passwordInvalid
}

//Throwing an error
func divisionZero(divide numerator: Int, by denominator: Int) throws {
    if denominator == 0 {
        throw ErroHandling.divideByZero
    } else {
        print(numerator / denominator)
    }
}

//Error handling
do {
    try divisionZero(divide: 22, by: 0)
} catch ErroHandling.divideByZero {
    print("Error : Number can not be divided by zero")
}

func urlVerification(url: String) throws -> Bool {
    if url.isEmpty {
        throw ErroHandling.urlEMpty
    } else {
        return true
    }
}

do {
    try urlVerification(url: "")
} catch ErroHandling.urlEMpty {
    print("Error : url feild is empty")
}

func bankStatement(amount: Int) throws {
    if amount < 1000 {
        throw ErroHandling.insufficientFund
    } else {
        print("You are able to withdraw a money!!")
    }
}

//if you are confident that throwing function won't  throw an error at runtime then you can use try!
try! bankStatement(amount: 2000)

//Error handling in init()
class MyClass {
    var x: Int = 2
    init(x: Int) throws {
        if self.x != x {
            throw ErroHandling.valuesNotEqual
        }
    }
}

do {
    let obj = try MyClass(x: 1)
} catch {
    print(error)
}

// Do with mutiple catch block
func passwordVerification(password: String) throws -> String {
    guard password.count > 0 else { throw ErroHandling.passwordEmpty }
    if password.count > 8 {
       return password
    } else {
        throw ErroHandling.passwordInvalid
    }
}

do {
    try passwordVerification(password: "")
} catch ErroHandling.passwordInvalid {
    print("Error: Password shoould not be empty")
} catch {
    print("Error: Password must contains at least 8 letters")
}

let x = try? passwordVerification(password: "1234589012176")
print(x)
