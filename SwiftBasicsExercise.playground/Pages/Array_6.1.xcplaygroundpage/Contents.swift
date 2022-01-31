//MARK: Array exercise
var array1: [Int] = [1, 2, 3, 1]
var messageOutput = "Output : "

//Array exercise 1
print("\n1-->")
print("Input : ", array1)
if array1.count >= 1 {
    print(array1.first == array1.last ? messageOutput + "True" : messageOutput + "False")
}

//Array excercise 2
print("\n2-->")
print("Input : ", array1)
var sizeOfSecondArr = array1.count * 2
var array2 = Array(repeating: 0, count: sizeOfSecondArr)
array2[array2.count - 1] = array1[array1.count - 1]
print("Output :", array2)

//Array exercise 3
print("\n3-->")
print("Input : ", array1)
let arraySlices = array1.prefix(2)
print(array1.count >= 2 ? "\(messageOutput)\(arraySlices)" : "\(messageOutput)\(array1)")

//Array exercise 4
print("\n4-->")
var a2: [Int] = [0, 50, 100, 20, 80, 150]
print("Input : ", a2)
let maxElement = a2.max()
print("Output : ", maxElement!)

//Array exercise 5
print("\n5-->")
print("Input : ", array1)
array1.sort()
print("Output : ", array1)
let ascArray = a2.sorted()
print("Output : ", ascArray)
let descArray = Array(ascArray.reversed())

//Array exercise 6
print("\n6-->")
var b1: Set = [1, 2, 3, 10, 100]
var b2: Set = [2, 5]
var result: [Int] = [] 
for b1Items in b1 {
    for b2Items in b2 {
        if(b1Items % b2Items == 0) {
            if(!result.contains(b1Items)) {
                result.append(b1Items)
            }
        }
    }
}
print(result)
