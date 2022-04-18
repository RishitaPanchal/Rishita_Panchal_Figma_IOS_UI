//
//  ViewControllerSegCtrlToSwitchView.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/03/22.
//

import UIKit

class SegmentControllerToSwitchViewVC: UIViewController {
   
    // MARK: IBOutlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var coolectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewHolder: UIView!
    @IBOutlet weak var segController: UISegmentedControl!

    // MARK: Instance Variables
    var items: [String] = ["Blue", "Red", "Black"]

    // MARK: Overriden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        coolectionView.dataSource = self
        coolectionView.delegate = self
    }
    
    // MARK: IBACtion
    @IBAction func addCell(_ sender: UIButton) {
        if let text = textField.text, !text.isEmpty{
            self.items.insert(text, at: 0)
            tableView.beginUpdates()
            tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)
            tableView.endUpdates()
            coolectionView.reloadData()
        }
    }

    @IBAction func switchToAnotherView(_ sender: UISegmentedControl) {
        switch segController.selectedSegmentIndex {
            case 0:
                self.coolectionView.isHidden = true
                self.tableView.isHidden = false
            case 1:
                self.tableView.isHidden = true
                self.coolectionView.isHidden = false
            default:
                self.coolectionView.isHidden = true
                self.tableView.isHidden = false
        }
    }

}

// MARK: Tableview datasource
extension SegmentControllerToSwitchViewVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return TableCell.loadData(tableView, items: items, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete) {
            items.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            coolectionView.reloadData()
        }
    }
    
}

// MARK: Custom protocol conformation
extension SegmentControllerToSwitchViewVC: RemoveDataProtocol {
    
    func removeData(idx: Int) {
        items.remove(at: idx)
        coolectionView.reloadData()
        tableView.reloadData()
    }
    
}

// MARK: Collectionview Datasource
extension SegmentControllerToSwitchViewVC: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = coolectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as? CollectionViewCelll else {
            return UICollectionViewCell()
        }
        cell.label.text = items[indexPath.row]
        cell.index = indexPath
        cell.delegate = self
        return cell
    }
    
}

extension SegmentControllerToSwitchViewVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = view.frame.width * 0.40
        return CGSize(width: size, height: size)
    }
    
}
