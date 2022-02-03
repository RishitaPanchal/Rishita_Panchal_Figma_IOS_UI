struct OddEvenNumbers {
    
    var even = [Int]()
    var odd = [Int]()
    
    mutating func findOddEven(num: Int...) {
        num.forEach { number in
            number % 2 == 0 ? even.append(number) : odd.append(number)
        }
    }
    
}

var objOddEven = OddEvenNumbers()
objOddEven.findOddEven(num: 1, 3, 5, 6, 8, 10, 9, 7, 8, 12)
print("Even numbers are : ", objOddEven.even)
print("Odd numbers are : ", objOddEven.odd)
