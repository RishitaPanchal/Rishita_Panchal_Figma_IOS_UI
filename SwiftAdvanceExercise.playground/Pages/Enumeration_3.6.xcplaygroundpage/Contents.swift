//MARK:  Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).

//with CaseIterable
enum Colors: Int, CaseIterable {
    
    case red, blue, green, violet, babyPink
    
}

print("Total \(Colors.allCases.count) colors area vaialable ->")
for color in Colors.allCases {
    print("Color name : \(color), Default value: \(color.rawValue)")
}

//without CaseIterable
enum Colors1: Int {
    
    case red, blue, green, violet, babyPink
    static var allCases: [Colors] {
          return [.red, .blue, .green, .violet, .babyPink]
    }
    
}

print("\nTotal \(Colors1.allCases.count) colors area vaialable ->")
for color in Colors1.allCases {
    print("Color name : \(color), Default value: \(color.rawValue)")
}
