//MARK: Create a swift class without initializers and access (write, read) its properties using instance of class.

class AreaOfCircle {
    
    var radius: Double = 20
    let pi = 3.14
    
    func area() -> Double {
        return pi * radius * radius
    }
    
}

var circle = AreaOfCircle()
print("Area of circle having a radius \(circle.radius) : ", circle.area())
circle.radius = 17

print("Area of circle having a radius \(circle.radius) : ", circle.area())
