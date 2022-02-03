//MARK: 14)  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position

extension String {
    
    subscript (i: Int) -> Character {
        let i = self.index (self.startIndex, offsetBy: 3)
        return self[i]
    }
    
}

let string1 = "WORLD"
print("Original String : \(string1)")
print("Character at given position:", string1[3])

