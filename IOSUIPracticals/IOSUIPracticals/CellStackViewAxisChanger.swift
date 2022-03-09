import UIKit

class CellStackViewAxisChanger: UITableViewCell {

    // MARK: IBOutlet declarations
    @IBOutlet weak var switchStatus: UISwitch!
    @IBOutlet weak var stackView: UIStackView!
    
    // MARK: IBActions
    @IBAction func orientationChanger(_ sender: UISwitch) {
        stackView.axis = switchStatus.isOn ? .vertical : .horizontal
    }
    
}
