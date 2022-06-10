//
//  Registration+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 14/06/22.
//
//

import Foundation
import CoreData


extension Registration {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Registration> {
        return NSFetchRequest<Registration>(entityName: "Registration")
    }

    @NSManaged public var username: String?
    @NSManaged public var surname: String?
    @NSManaged public var phone: String?
    @NSManaged public var email: String?
    @NSManaged public var location: String?

}
