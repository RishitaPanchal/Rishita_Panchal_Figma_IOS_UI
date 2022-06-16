//
//  Vehicle+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 17/06/22.
//
//

import Foundation
import CoreData


extension Vehicle {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Vehicle> {
        return NSFetchRequest<Vehicle>(entityName: "Vehicle")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var personId: Int64
    @NSManaged public var toPerson: Person?

}
