//MARK: 3) Create a swift program to show usage of stored properties.

struct StroredProperty {
    
    var x: Int, y: Int
    
    init(x: Int, y: Int) {
        self.x = x + 10
        self.y = y + 10
    }
    
    func updatedValues() {
        print("\nValue of x: \(x)\nValue of y: \(y)")
    }

}

var obj = StroredProperty(x: 20, y: 30)
obj.updatedValues()
