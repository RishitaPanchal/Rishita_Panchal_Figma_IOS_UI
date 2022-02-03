//MARK: Create one swift subscript program which takes range as input and returns the string between the ranges.

extension String {
    
    subscript (start: Int, end: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: start)
        let endIndex = self.index(self.startIndex, offsetBy: end)
        let range = self[startIndex...endIndex]
        return String(range)
    }
    
}

let string1 = "Swift learning"
print("Original String : \(string1)")
print("Substring : ",string1[1, 4])

