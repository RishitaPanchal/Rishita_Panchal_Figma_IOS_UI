//MARK: Dictionary excercise 6

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var numbersWithFrequencies = [Int: Int]()

numbers.forEach { number in
    numbersWithFrequencies[number] = (numbersWithFrequencies[number] ?? 0) + 1
}

print("Numbers with frequancies -> ")
numbersWithFrequencies.keys.sorted().forEach { key in
    print("\(key) :  \(numbersWithFrequencies[key] ?? 0)")
}
