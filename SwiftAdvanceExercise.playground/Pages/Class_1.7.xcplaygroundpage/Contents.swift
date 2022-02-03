//MARK: Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.

import Foundation


class PowerOfNumber {
   
    var value: Int
    init(value: Int) {
        self.value = value
    }

    func doPower(power: Int) {
        var answer : Int = 1
        for _ in 0..<power { answer *= value }
        print("\(value)'s power \(power) : (\(answer))")
    }
    
}

var i = PowerOfNumber(value: 5)
i.doPower(power: 3)
