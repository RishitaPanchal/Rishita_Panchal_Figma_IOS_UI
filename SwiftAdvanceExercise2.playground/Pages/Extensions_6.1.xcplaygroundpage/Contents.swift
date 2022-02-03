import Foundation

extension String {
    
    //Extension exercise 1
    mutating func insertCharAt(char: String, at: Int) {
        self.insert(contentsOf: char, at: self.index(self.startIndex, offsetBy: at) )
    }
    
    //Extension ecercise 2 & 3
    mutating func replaceCharAt(old: String, new: String) {
        self = self.replacingOccurrences(of: old, with: new)
    }
    
    //Extension ecercise 4
    func counWords() -> Int {
        let word = self.components(separatedBy: " ")
        return word.count
    }
    
    var wordCount: Int {
        self.components(separatedBy: " ").count
    }
    
}


var string = "Good morning! Hope you guys are doing well"
print("Original String : \(string)")
string.insertCharAt(char: "X", at: 5)
print("\nn1->")
print("Insert character at Pos 5th : ", string)

print("\nn2->")
string.replaceCharAt(old: "X", new: "t")
print("Replacement of old character with new character : ", string)

print("\nn3->")
string.replaceCharAt(old: " ", new: "")
print("Removal of space from string : ", string)

print("\nn4->")
var string1 = "Good morning! Hope you guys are doing well"
print("Number of words in a string: ", string1.wordCount)
