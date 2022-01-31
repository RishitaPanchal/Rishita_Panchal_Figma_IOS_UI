var laptops = ["Lenovo","Dell","HP","ASUS"]

print("For in loop : ")
for index in laptops {
    print(index)
}

print("\nRanges in loop : ")
for index in 1...3 {
    print("\(index) ", terminator: "")
}
print()

for index in 1..<5 {
    print("\(index) ", terminator: "")
}

var randomInt: [Int] = []
//_ is use when you dont need to access current values
for _ in 1...25 {
    let random = Int.random(in: 1...100)
    randomInt.append(random)
}
print(randomInt)

print("\nCLosed range using stride : ")
//It is line closed range
for index in stride(from: 2, through: 12, by: 2) {
    print(index)
}

print("\nFor and if in one line :")
var players = ["MS dhoni", "Virat kohli", "Ravindra jadeja"]
for player in players {
    if player == "Virat kohli" {
        print("Yes!! Virat is playing cricker")
    }
}

//In shorter way we can write like below block
for player in players where player == "Virat kohli" {
   print("Yes!! Virat is playing cricker")
}

print("\nWhile loop :")
var index = 0
while(index < 5) {
    print(index)
    index += 1
}

print("\nRepeat While loop :")
var index1 = 5
repeat {                                                 //It excecute atleast once
    print("Indxe :\(index1)")
    index1 += 1
} while index1 < 10

print("\nIf else : ")
var numA = 15
if numA > 12 {
    print("\(numA) is greater than 12")
} else if numA < 12 {
    print("\(numA) is less than 12")
} else {
    print("\(numA) is equal to 12")
}

print("\nSwitch case :")
var (numC, numD) = (20, 10)
let choice = "+"
switch choice {
    case "+":
        print(numC + numD)
        fallthrough
    case "-":
        print(numC - numD)
        fallthrough
    case "*":
        print(numC * numD)
    case "/":
        print(numC / numD)
    default:
        print("Invalid choice")
}

//Fallthrough in switch
print()
let choice1 = 12
switch choice1 {
    case 1..<30:
        print("Number lies between 1 to 30")
        fallthrough
    case 30..<70:
        print("Number lies between 40 to 70")
        fallthrough
    case 70..<100:
        print("number lies between 80 to 100")
    case 101,102:
        print("Number is either 101 or 102")
    default:
        print("Number is not matched in any case")
}

print("\nTupple : ")
var tupple1 = (modelNo: 13, typee: "Iphone", 10, 20, 30)

print("\(tupple1.0) \(tupple1.typee)")
print("\(tupple1.modelNo) \(tupple1.1)")
print(tupple1.2)

print("\nContinue & break : ")
print("Continue-->")
let filenames = ["flower.jpg", "song.mp4", "taj.jpg"]
for fileName in filenames {
    if fileName.hasSuffix(".jpg") == false {
        continue
    }
    print(fileName)
}

print("\nBreak-->")
for fileName in filenames {
    if fileName.hasSuffix(".jpg") == false {
        break
    }
    print(fileName)
}
