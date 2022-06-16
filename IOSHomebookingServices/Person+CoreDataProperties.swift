//
//  Person+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 17/06/22.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var toVehicle: Set<Vehicle>?

}

// MARK: Generated accessors for toVehicle
extension Person {

    @objc(addToVehicleObject:)
    @NSManaged public func addToToVehicle(_ value: Vehicle)

    @objc(removeToVehicleObject:)
    @NSManaged public func removeFromToVehicle(_ value: Vehicle)

    @objc(addToVehicle:)
    @NSManaged public func addToToVehicle(_ values: Set<Vehicle>)

    @objc(removeToVehicle:)
    @NSManaged public func removeFromToVehicle(_ values: Set<Vehicle>)
    
    
    func convertToPerson() -> PersonData {
        return PersonData(id: self.id, name: self.name ?? "nil", vehicles: self.convertToVehicles())
    }
    
    func convertToVehicles() -> [VehicleData]? {
    
        guard self.toVehicle != nil && self.toVehicle?.count != 0 else { return nil }
        let vehicleArray: [VehicleData] = []
        self.toVehicle?.forEach({ vehicleElemnet in
           print(vehicleElemnet)
        })
        return vehicleArray
    }

}
