//
//  ViewControllerTwoByCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//


import UIKit

// MARK: Protocol backwardDataPassing
protocol BackWardDataPassing: AnyObject {
    func passData(data: String)
}

class ViewControllerTwoByCoordinator: UIViewController {
   
    // MARK: Instance variabel
    var coordinator: VCTwoCoordinator?
    var delegate: BackWardDataPassing?
    var recievedItems = [String]()
    var data = [String]()
    
    // MARK: IBOutlets
    @IBOutlet weak var tblView: UITableView!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        configureBarItem()
    }
    
    private func configureBarItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addVC))
    }
    
    // MARK: Action for bar button
    @objc fileprivate func addVC() {
        let alert = UIAlertController(title: "Add message", message: "", preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
            print("canceld")
        }))
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            guard let msg = alert.textFields![0].text else {
                return
            }
            self.delegate?.passData(data: msg)
            self.coordinator?.finish()
            //self.displayData.text = msg
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: IBAction
    @IBAction func goToRootVC(_ sender: UIButton) {
        coordinator?.finish()
    }
    
}

// MARK: TableviewDatasource Extension
extension ViewControllerTwoByCoordinator: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recievedItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return RecievedItemTableViewCell.loadData(tblView, receivedItems: recievedItems, indexPath: indexPath)
    }
    
}
