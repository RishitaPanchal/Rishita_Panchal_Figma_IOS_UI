//
//  PersonDetailsViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 17/06/22.
//

import UIKit

class PersonDetailsViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {
    
    // MARK: - Instance variables
    let personId = Int64.random(in: 1...100)
    var vehiclesArray = [VehicleData]()
    
    // MARK: - IBOultlets
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtVehicleOne: UITextField!
    @IBOutlet weak var txtVehicleTypeOne: UITextField!
    
    @IBOutlet weak var txtVehicleTwo: UITextField!
    @IBOutlet weak var txtVehicleTypeTwo: UITextField!
    
    @IBOutlet weak var txtVehicleThree: UITextField!
    @IBOutlet weak var txtVehicleTypeThree: UITextField!
    
    @IBOutlet weak var txtVehicleTypeFour: UITextField!
    @IBOutlet weak var txtVehicleFour: UITextField!
    
    // MARK: - Overridden methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func addYourVehicles(_ sender: Any) {
        initData()
    }
    
    // MARK: - Functions
    func checkForVehicles()  -> [VehicleData] {
        if txtVehicleOne.text != "" {
            vehiclesArray.append(VehicleData(id: Int64.random(in: 1...100), name: txtVehicleOne.text ?? "nil", type: txtVehicleTypeOne.text ?? R.string.localizable.nullMessage(), personId: personId))
        }
        
        if txtVehicleTwo.text != "" {
            vehiclesArray.append(VehicleData(id: Int64.random(in: 1...100), name: txtVehicleTwo.text ?? "nil", type: txtVehicleTypeTwo.text ?? R.string.localizable.nullMessage(), personId: personId))
        }
        
        if txtVehicleThree.text != "" {
            vehiclesArray.append(VehicleData(id: Int64.random(in: 1...100), name: txtVehicleThree.text ?? "nil", type: txtVehicleTypeThree.text ?? R.string.localizable.nullMessage(), personId: personId))
        }
        
        if txtVehicleFour.text != "" {
            vehiclesArray.append(VehicleData(id: Int64.random(in: 1...100), name: txtVehicleFour.text ?? R.string.localizable.nullMessage(), type: txtVehicleTypeFour.text ?? R.string.localizable.nullMessage(), personId: personId))
        }
        return vehiclesArray
    }
    
    func initData() {
        let personRecords = PersonData(id: personId, name: txtUsername.text ?? R.string.localizable.nullMessage(), vehicles: checkForVehicles())
        createData(data: personRecords)
    }
    
    func createData(data: PersonData) {
        PersonEntityOperations.shared.create(data: data) { status in
            (status) ? print(R.string.localizable.successfullyAddedd()) : print(R.string.localizable.dataNotSaved())
        }
    }
    
}
