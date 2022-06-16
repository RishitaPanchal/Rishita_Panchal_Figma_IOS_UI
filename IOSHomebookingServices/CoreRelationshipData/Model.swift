//
//  Model.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 17/06/22.
//

import Foundation

// MARK: - Model classes

///Person Class
class PersonData {
    
    var id: Int64
    var name: String
    var vehicles: [VehicleData]?
    
    init(id: Int64, name: String, vehicles: [VehicleData]? = nil) {
        self.id = id
        self.name = name
        self.vehicles = vehicles
    }
    
}

/// Vehicle Class
class VehicleData {
    
    var id: Int64
    var name: String
    var type: String
    var personId: Int64
    
    init(id: Int64, name: String, type: String, personId: Int64) {
        self.id = id
        self.name = name
        self.type = type
        self.personId = personId
    }
      
}
