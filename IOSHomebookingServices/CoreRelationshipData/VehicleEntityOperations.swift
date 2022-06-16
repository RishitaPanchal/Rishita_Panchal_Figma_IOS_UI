//
//  VehicleEntityOperations.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 17/06/22.
//

import Foundation
import CoreData
import UIKit

class VehicleEntityOperations: BaseRepository {

    // MARK: - Instance variables
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    typealias T = VehicleData
    
    // MARK: Functions
    func create(data: VehicleData, completion: @escaping (Bool) -> Void) {
        guard let context = context else { return }
        let vehicle = Vehicle(context: context)
        vehicle.id = data.id
        vehicle.name = data.name
        vehicle.type = data.type
    }
    
}
