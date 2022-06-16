//
//  PersonEntityOperations.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 17/06/22.
//

import Foundation
import CoreData
import UIKit

class PersonEntityOperations: BaseRepository {

    // MARK: - Instance variables
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    static let shared = PersonEntityOperations()
    typealias T = PersonData
    
    // MARK: - Functions
    func create(data: PersonData, completion: @escaping (Bool) -> Void) {
        guard let context = context else { return }
        let person = NSEntityDescription.insertNewObject(forEntityName: R.string.localizable.person(), into: context) as? Person
        person?.id = data.id
        person?.name = data.name
        if(data.vehicles != nil && data.vehicles?.count != 0) {
            var vehicleSet = Set<Vehicle>()
            data.vehicles?.forEach({ (vehicles) in
                let vehicle = NSEntityDescription.insertNewObject(forEntityName: R.string.localizable.vehicle(), into: context) as? Vehicle
                vehicle?.id = vehicles.id
                vehicle?.name = vehicles.name
                vehicle?.type = vehicles.type
                vehicle?.personId = vehicles.personId
                guard let vehicle = vehicle else { return }
                vehicleSet.insert(vehicle)
            })
            person?.toVehicle = vehicleSet as NSSet
        }
        do {
            try context.save()
            completion(true)
        } catch {
            print(R.string.localizable.dataNotSaved())
        }
    }
    
}
