//
//  DatabaseHelper.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 14/06/22.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    // MARK: - Instance variables
    static var shared = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    let registration =  Registration()
    
    // MARK: - Functions (CRUD operations)
    func save(object: [String: String?], completion: (Bool) -> Void) {
        guard let context = context else { return }
        let user = NSEntityDescription.insertNewObject(forEntityName: R.string.localizable.registration(), into: context) as? Registration
        user?.rid = "\(Int16.random(in: 1...10))"
        user?.username = object["userName"] ?? "nil"
        user?.surname = object["surname"] ?? "nil"
        user?.phone = object["phone"] ?? "nil"
        user?.email = object["email"] ?? "nil"
        user?.location = object["location"] ?? "nil"
        do {
            try context.save()
            completion(true)
        } catch {
            print("Data not saved")
        }
    }
    
    func retriveData(completion: @escaping (NSManagedObject) -> Void) {
        do {
            guard let result = try context?.fetch(Registration.fetchRequest()) else { return }
            for data in result {
                completion(data)
            }
        } catch {
            print(R.string.localizable.failedToDelete())
        }
    }
    
    func deleteDetailes(id: String) -> Bool? {
        let studentDetails = getDataFromID(id: id)
        guard let studentDetails = studentDetails else {
            return false
        }
        context?.delete(studentDetails)
        try? context?.save()
        return true
    }
    
    func getDataFromID(id: String) -> Registration? {
        let fetchRequest = NSFetchRequest<Registration>(entityName: R.string.localizable.registration())
        let predicate = NSPredicate(format: "rid == %@", id)
        fetchRequest.predicate = predicate
        do {
            guard let result = try context?.fetch(fetchRequest).first else { return nil }
            return result
        } catch let error {
            print(error)
        }
        return nil
    }
    
    func deleteData() {
        if let result = try? context?.fetch(Registration.fetchRequest()) {
            for object in result {
                context?.delete(object as NSManagedObject)
            }
            try? context?.save()
        }
    }

    func updateData(id: String, email: String, phone: String) -> Bool {
        let studentDetails = getDataFromID(id: id)
        guard let studentDetails = studentDetails else { return false }
        if email == "nil" || phone == "nil" {
            if email == "nil" {
                print(R.string.localizable.emptyEmail())
                studentDetails.setValue(phone, forKey: "phone")
            } else if phone == "nil" {
                print(R.string.localizable.emptyPhone())
                studentDetails.setValue(email, forKey: "email")
            }
        } else {
            studentDetails.setValue(phone, forKey: "phone")
            studentDetails.setValue(email, forKey: "email")
        }
        try? context?.save()
        return true
    }
    
    func addAlertBox(viewController: UIViewController, data: @escaping (String?, String?) ->  Void) {
        let alertController = UIAlertController(title: R.string.localizable.alertTitle(), message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = R.string.localizable.enterEmail()
        }
        let saveAction = UIAlertAction(title: R.string.localizable.alertSaveAction(), style: UIAlertAction.Style.default, handler: { alert -> Void in
            let email = alertController.textFields![0] as UITextField
            let phone = alertController.textFields![1] as UITextField
            if email.text != "" || phone.text != "" {
                if email.text == "" {
                    data(nil, phone.text)
                } else if phone.text == "" {
                    data(email.text, nil)
                } else {
                    data(email.text, phone.text)
                }
            }
        })
        let cancelAction = UIAlertAction(title: R.string.localizable.alertCancelAction(), style: UIAlertAction.Style.default, handler: {
                (action : UIAlertAction!) -> Void in
        })
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = R.string.localizable.enterPhone()
        }
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        viewController.present(alertController, animated: true, completion: nil)
    }

}
