import Foundation
let n1 = 4
//Control-flow exercise 1
print("\n1-->")
var result = 2
while result <= 100 {
    print(result)
    result *= 2
}

//Control-flow exercise 2
print("\n\n2-->")
let n = 3
let row = String(repeating: "*", count: n)
let pattern = String(repeating: row+"\n", count: n)
print(pattern)

//Control-flow exercise 3
print("\n3-->")
(1...n1).forEach { i in
    print(String(repeating: "*", count: i))
}

//Control-flow exercise 4
print("\n4-->")
(1...n1).forEach { i in
    let space = String(repeating: " ", count: n1 - i)
    print(space + String(repeating: "*", count: i))
}

//Control-flow exercise 5
print("\n5-->")
var num = 3
var count = 0
if(num == 1 || num == 2 || num == 3) {
    print("prime")
} else {
    for i in 2..<(num/2) {
        if num % i == 0 {
               count += 1
        }
    }
    print(count > 0 ? "Not prime" : "prime")
}

