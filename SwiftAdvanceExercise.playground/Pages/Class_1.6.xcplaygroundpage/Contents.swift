//MARK: Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class AreaOfShape {
    
    func area() {
        print("Area of any shape->")
    }
    
}

class AreaOfCircle: AreaOfShape {
    
    var radius: Double = 20
    let pi = 3.14
    
    override func area() {
        super.area()
        print("Circle : \(pi * radius * radius)")
    }
    
}

class AreaOfRectangle: AreaOfShape {
    
    var length = 20
    var breedth = 15
    
    override func area() {
        super.area()
        print("Rectangle : \(length * breedth)")
    }
    
}

var areaRect = AreaOfRectangle()
areaRect.area()

var areaCircle = AreaOfCircle()
areaCircle.area()
