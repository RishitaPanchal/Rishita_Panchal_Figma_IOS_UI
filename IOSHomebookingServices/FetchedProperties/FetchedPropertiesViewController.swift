//
//  FetchedPropertiesViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 20/06/22.
//

import UIKit

class FetchedPropertiesViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {

    // MARK: - Instance variable
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    var contractorPerson = [PersonBuisness]()
    
    // MARK: - IBOutlets
    @IBOutlet weak var tblView: UITableView!
    
    // MARK: - Overidden method
    override func viewDidLoad() {
        super.viewDidLoad()
        addDataToDataModel()
    }

    // MARK: - Functions
    func addDataToDataModel() {
        guard let context = context else { return }
        let joy = PersonBuisness(context: context)
        joy.name = "JOY"
        joy.type = "contractor"
        
        let jeh = PersonBuisness(context: context)
        jeh.name = "JEH"
        jeh.type = "contractor"
        
        let emilie = PersonBuisness(context: context)
        emilie.name = "EMILIE"
        emilie.type = "IT Consultant"
        
        let buisness = Buisness(context: context)
        buisness.name = "Simform solutions"
        
        buisness.addToPeople(jeh)
        buisness.addToPeople(joy)
        buisness.addToPeople(emilie)
        
        try? context.save()
        
        let contractors = buisness.value(forKey: "contractors") as? [PersonBuisness]
        guard let contractors = contractors else { return }
        for person in contractors {
            contractorPerson.append(person)
        }
    }
    
}

// MARK: - TableviewDelegate Extension
extension FetchedPropertiesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

// MARK: - TableviewDatasource Extension
extension FetchedPropertiesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contractorPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.fetchedPropertiesTableViewCell, for: indexPath) else { return UITableViewCell() }
        FetchedPropertiesTableViewCell.initData(cell: cell, tableView: tableView, indexpath: indexPath, data: contractorPerson)
        return cell
    }

}
