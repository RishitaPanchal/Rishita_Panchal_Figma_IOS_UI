//
//  Signup+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 16/06/22.
//
//

import Foundation
import CoreData


extension Signup {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Signup> {
        return NSFetchRequest<Signup>(entityName: "Signup")
    }

    @NSManaged public var id: Int64
    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var email: String?
    @NSManaged public var phone: String?
    @NSManaged public var surname: String?
    @NSManaged public var location: String?
    @NSManaged public var signin: Signin?

}
