import UIKit

class CellIncrementorDecrementor: UITableViewCell {

    // MARK: Outlet decalaration
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var CollectionItems: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!

    // MARK: Variable
    var count: Int = 0
    
    // MARK: Overridden method
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
 
    // MARK: IBActions
    @IBAction func cellIncrementerDecrementer(_ sender: UIStepper) {
        count = Int(sender.value)
        collectionView.reloadData()
    }
    
}

// MARK: Collectionview datasource methods
extension CellIncrementorDecrementor: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return count
    }

}

// MARK: Collectionview delegate methods
extension CellIncrementorDecrementor: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as UICollectionViewCell
        return cell
    }
    
}
