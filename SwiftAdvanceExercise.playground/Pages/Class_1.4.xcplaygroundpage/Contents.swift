//MARK: Create a swift class which is having code to return square of given number and access this code using class instance.

class SquareOfNumber {
    
    func squared(num: Int) -> Int{
        return num * num
    }
    
}

var a = SquareOfNumber()
print(a.squared(num: 2))
