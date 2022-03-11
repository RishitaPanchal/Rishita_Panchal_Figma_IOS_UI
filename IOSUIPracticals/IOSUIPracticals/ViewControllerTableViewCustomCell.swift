import UIKit

class ViewControllerTableViewCustomCell: UIViewController {
    
    // MARK: Instance variables
    var countries: [String] = ["India", "USA", "CANADA", "EUROPE", "Russia", "UK", "Australia", "Africa", "Ukrain", "Pakistand", "Afghanistan", "Italy", "Kenya", "Japan", "Mexico", "Saudi Arabia"]
    
    // MARK: IBActions
    @IBOutlet weak var myTable: UITableView!
    
    //MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        myTable.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
}

// MARK: UITableviewDelgate & UITableviewDatasource
extension ViewControllerTableViewCustomCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textTitle.text = countries[indexPath.row]
        return cell
    }
    
}
