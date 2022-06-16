//
//  Buisness+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 20/06/22.
//
//

import Foundation
import CoreData


extension Buisness {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Buisness> {
        return NSFetchRequest<Buisness>(entityName: "Buisness")
    }

    @NSManaged public var name: String?
    @NSManaged public var people: NSSet?

}

// MARK: Generated accessors for people
extension Buisness {

    @objc(addPeopleObject:)
    @NSManaged public func addToPeople(_ value: PersonBuisness)

    @objc(removePeopleObject:)
    @NSManaged public func removeFromPeople(_ value: PersonBuisness)

    @objc(addPeople:)
    @NSManaged public func addToPeople(_ values: NSSet)

    @objc(removePeople:)
    @NSManaged public func removeFromPeople(_ values: NSSet)

}
