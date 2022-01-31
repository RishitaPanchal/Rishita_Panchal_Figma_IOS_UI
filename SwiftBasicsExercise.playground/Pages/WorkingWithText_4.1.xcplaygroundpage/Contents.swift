//MARK: Working with Strings & Characters
import Foundation

var inputString: String = "Simform"
let inputString1 = "Swift", inputString2 = "example"
var string1 = "Simform solutions"
var messageInput = "Input : "
var messageOutput = "Output : "

//String & character exercise 1
print("\n1 -->")
print("Input : ", inputString)
print(inputString.count < 2 ? messageInput + inputString : messageOutput + inputString.prefix(2))

//String & character exercise 2
print("\n2 -->")
print("Input : ", inputString)
let start = inputString.index(inputString.startIndex, offsetBy: 1)
let end = inputString.index(inputString.endIndex, offsetBy: -1)
let range = inputString[start..<end]
print(inputString.count >= 2 ? messageOutput + inputString[start..<end] : "\(messageOutput) Length of string must be 2")

//String & character exercise 3
print("\n3 -->")
print("Input : inputString1 = \(inputString1), inputString2 = \(inputString2)")

let start_s1 = inputString1.dropFirst()
let start_s2 = inputString2.dropFirst()
let merged = start_s1 + start_s2
print(inputString1.count >= 1 && inputString2.count >= 1 ? messageOutput + merged : "\(messageOutput) Length of must be 1")

//String & character exercise 4
print("\n4 -->")
print("Input: ", inputString1)

var prefixStr = inputString1.prefix(2)
var answer = inputString1.dropFirst(prefixStr.count)
answer += prefixStr
print("Output: ", answer)

//String & character exercise 5
print("\n5 -->")
print("Input : ", inputString1)
print(inputString1.hasPrefix("Sw") ? "Output: \(true)" : "Output:  \(false)")

//String & character exercise 6
print("\n6 -->")
let length = 3

print("Input : ", string1)
let prefix = string1.prefix(length)
let suffix = string1.suffix(length)
let firstLastNCHar = prefix + suffix

print(string1.count >= length ? messageOutput + firstLastNCHar : messageOutput + "Length of string must be \(length)")
