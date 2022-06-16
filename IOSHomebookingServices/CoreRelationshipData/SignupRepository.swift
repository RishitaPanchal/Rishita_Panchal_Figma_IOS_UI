//
//  SignupRepository.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 16/06/22.
//

import Foundation
import UIKit
import CoreData

//struct Signuprepository: BaseRepository {
//   
//    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
//
//    typealias T = Signup
//    
//    func create(data: Signup, completion: @escaping (Bool) -> Void) {
//        guard let context = context else { return }
//        let user = NSEntityDescription.insertNewObject(forEntityName: "Signup", into: context) as? Signup
//        user?.username = data.username
//        user?.surname = data.surname
//        user?.email = data.email
//        user?.location = data.location
//        user?.phone = data.phone
//        do {
//            try context.save()
//            completion(true)
//        } catch {
//            print("Data not saved")
//        }
//    }
//
//}
