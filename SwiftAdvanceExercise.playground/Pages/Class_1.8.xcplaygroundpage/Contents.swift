//MARK: Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.

class Vehicle {
    
    var type = "petrol"
    var avergeSpeed: Int {
        return 120
    }
    
    func description() {
        print("Rule : Average speed for all vehicle : \(avergeSpeed)")
    }
    
}

class Car: Vehicle {
    
    var gear = 4
    override var avergeSpeed: Int {
        return super.avergeSpeed
    }
    
    override func description() {
        print("Car-->")
        print("Average speed : \(avergeSpeed), Gear : \(gear)")
        super.description()
    }
    
}

class Bike: Vehicle {
    
    var wheels = 2
    override var avergeSpeed: Int {
        return 100
    }
    
    override func description() {
        print("\nBike-->")
        print("Average speed : \(avergeSpeed) kmhr, Wheels: \(wheels)")
        print("Rule : Average speed for all vehicle", super.avergeSpeed)
    }

}

var bike = Bike()
bike.description()

var vehicle = Car()
vehicle.description()
print("\nEngine type : \(vehicle.type)")
