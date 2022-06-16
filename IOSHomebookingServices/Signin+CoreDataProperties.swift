//
//  Signin+CoreDataProperties.swift
//  
//
//  Created by Rishita Panchal on 16/06/22.
//
//

import Foundation
import CoreData


extension Signin {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Signin> {
        return NSFetchRequest<Signin>(entityName: "Signin")
    }

    @NSManaged public var id: Int64
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var username: String?
    @NSManaged public var signup: Signup?

}
