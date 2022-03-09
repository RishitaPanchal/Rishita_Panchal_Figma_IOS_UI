import UIKit

class TableViewControllerForSearchBar: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Instance variable
    let rowData = ["Settings", "Wifi", "App", "Storage"]
    var filteredData: [String]! = nil
    
    // MARK: View lifecycle overriden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        filteredData = rowData
    }
    
}

// MARK: Tableview datasource methods
extension TableViewControllerForSearchBar: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData")! as UITableViewCell
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
}

// MARK: Tableview delegate methods
extension TableViewControllerForSearchBar: UITableViewDelegate {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
}

// MARK: Searchbar delegate methods
extension TableViewControllerForSearchBar: UISearchBarDelegate {
    
    // MARK: Searchbar delegate method
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == "" {
            filteredData = rowData
        } else {
            filteredData = rowData.filter({ $0.contains(searchText) })
        }
        self.tableView.reloadData()
    }
    
}
