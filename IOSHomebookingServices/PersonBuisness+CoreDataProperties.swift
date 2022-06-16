//
//  PersonBuisness+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 20/06/22.
//
//

import Foundation
import CoreData


extension PersonBuisness {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonBuisness> {
        return NSFetchRequest<PersonBuisness>(entityName: "PersonBuisness")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var job: Buisness?

}
