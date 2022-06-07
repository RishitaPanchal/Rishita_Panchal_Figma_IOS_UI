//
//  SettingsViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    var sections = TableViewData.settingData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        configureSettingBarButton()
    }
    
    func configureSettingBarButton() {
        let barButton = UIBarButtonItem(image: R.image.vectorback(), style: .done, target: self, action: #selector(backClicked))
        self.navigationController?.setTintColor(.black)
        let navigationFont = UIFont(name: R.font.poppinsRegular.fontName, size: 16)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: navigationFont!]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    @objc func backClicked() {
       print("Back pressed")
    }
    
}

extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView else { return }
        headerView.textLabel?.textColor = UIColor.black
        headerView.textLabel?.font = R.font.poppinsRegular(size: 16.0)
    }
    
}

extension SettingsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rowDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingTVWithSwitchCell = SettingsTVCell()
        let accountTVCell = AccountTVCell()
        if(indexPath.section == 0 && indexPath.row == 0) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Accounts", for: indexPath) as? AccountTVCell else {
                return UITableViewCell()
            }
            accountTVCell.initAccountCell(cell: cell, tableView: tableView, indexPath: indexPath)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.settings.identifier, for: indexPath) as? SettingsTVCell else {
                return UITableViewCell()
            }
            settingTVWithSwitchCell.initSettingCell(cell: cell, tableView: tableView, indexPath: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].sectionName
    }

}
