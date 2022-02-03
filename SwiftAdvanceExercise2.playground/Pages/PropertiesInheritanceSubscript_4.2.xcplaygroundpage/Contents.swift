//MARK: 2) Create a swift program to demonstrate usage of computed properties using getter and setter
struct GetSetDemo {
    
    var radius: Double = 20
    var area: Double {
        get{
            return radius * radius * 3.14
        } set {
            radius = newValue / 3.14
        }
    }
    
}

var obj = GetSetDemo()
print("Area of circle : ", obj.area)

obj.area = 1256
print("Newly set radius :", obj.radius)
