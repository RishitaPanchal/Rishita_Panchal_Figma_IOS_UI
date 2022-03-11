
import UIKit

class ViewControllerCollectionView: UIViewController{
    
    // MARK: outlet declaration
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overridden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
  
}

// MARK: Tableview Datasource methods
extension ViewControllerCollectionView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
   
}

// MARK: Tableview Delegate methods
extension ViewControllerCollectionView: UITableViewDelegate {
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      if(indexPath.row == 0) {
          if let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell1") as? CellStackViewAxisChanger {
              return cell
              
          }
      } else if(indexPath.row == 1) {
          if let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell2") as? CellIncrementorDecrementor {
              return cell
          }
      }
      return UITableViewCell()
  }
    
}
