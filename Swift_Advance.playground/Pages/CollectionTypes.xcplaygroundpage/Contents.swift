
print("\n---------Array operations-------")
var mutableArray = [10, 20, 30, 40, 50]

print("Array element at index 2 : \(mutableArray[2])")
print("Size of an Array is : \(mutableArray.count)")
mutableArray.append(60)
print(mutableArray.min())
print("Array elements after append operation :  \(mutableArray)")

//let keyword is used to make an array immutable
let immutableArray: [Int] = [1, 2, 3]
//immutableArray.append(4) We can't append element in immutable array
print("Immutable array : \(immutableArray)")

print("\nArray with default values : ")
//Array creation with default value and predefined size

var array1 = Array(repeating:1.0 , count: 3)
print("Elements of a1 : \(array1)")
var array2 = Array(repeating:2.0 , count: 2)
print("Elements of a2 : \(array2)")
//Concatanation of two arrays
var array3 = array1 + array2
print("Elements of a3 : \(array3)")

print("\nString array : ")
var countries: [String] = ["India", "USA", "UK"]

print("Array list is empty? \(countries.isEmpty)")
print("Elements of string array are: \(countries)")
print("Size of string array is : \(countries.count)")

//Append the canada in countries array
countries += ["Canada","China","Egypt"]
countries[1] = "Australia"
print("Updated array elements are: \(countries)")

countries[2...4] = ["Iceland","Japan"]
countries.insert("Nepal", at: 3)
print("Updated array elements are: \(countries)")

countries.remove(at: 1)
print(countries.first ?? "Nil")
countries.removeLast()
print(countries.shuffled())
print(countries.randomElement() ?? "Nill")

if countries.contains("Australia") {
    print("Yes! It is still in array")
} else {
    print("Australia is successfully removed from array")
}


print("\nIterate array using for loop : ")
for (index, item) in countries.enumerated() {
    print("Index : \(index) -> Item : \(item)")
}

print("\nAnother way of iterations:")

countries.forEach { elements in
    print("\(elements) ", terminator: "")
}

print()
print("\n---------Set operations-------")
var set1:Set<String> = ["Milk", "sugar", "Teapowder", "Clove", "Ginger"]
var set2:Set<String> = ["Coffeepowder", "Milk", "sugar", "Coffeepowder"]

print("Set 1 : \(set1)")
print("Lenght of set 1: \(set1.count)")
print("Is set1 empty? \(set1.isEmpty)")
set1.insert("Mint")

print("Updated set values are-->")
for i in set2 {
    print(i)
}

//It will remove mint element
set1.remove("Mint")
print("Is Mint is exist in set?")

if set1.contains("Mint") {
    print("Yes! It is exist in set1")
} else {
    print("It is removed from set")
}

print("Common element from two sets are :\(set1.intersection(set2))")
print("Symmetric differemnce of both sets : \(set1.symmetricDifference(set2))")
print("Union of both set : \(set1.union(set2))")
print("Subtracting set2 from set1 : \(set1.subtracting(set2))")

print("Is two sets are equal? \(set1 == set2)")
print("Ise set2 is subset of set1 ? ",(set2.isSubset(of:set1)))
print("Is set1 is superset of set2 ? ",(set1.isSuperset(of:set2)))
print("Is set1 and set2 does not have common element? ",(set1.isDisjoint(with:set2)))

//Empty set creation
var emptySet = Set<Int>()
print("Emptyset : ",emptySet)

emptySet.insert(10)
print(emptySet)
print()

print("\n---------Dictionary operations-------")
var dict:[Int:String] = [101: "java", 102: "C++", 103: "C#", 104: "Python"]

for (key1, val1) in dict {
    print("\(key1) : \(val1)")
}

print("Size of dictionarty is : \(dict.count)")
dict[103] = "c"
dict[104] = nil                                             //It will remove the value
//dict.updateValue("Fortran", forKey: 104)
print("\nUpdated dictionary : ")

dict.forEach { (key1, val1) in
    print("\(key1) : \(val1)")
}

print("Keys : ",dict.keys)
print("values : ",dict.values)
