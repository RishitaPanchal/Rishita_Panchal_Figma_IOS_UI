//MARK:   17)  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.

extension Dictionary {
    
    subscript(at i: Int) -> (key: Key, value: Value) {
        return self[index(startIndex, offsetBy: i)]
    }
    
}

let cars = [101: "Jeguar", 102: "Ferari", 103: "BMW"]
print(cars[at: 2])
print(cars[at: 1])
