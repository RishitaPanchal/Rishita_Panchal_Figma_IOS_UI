import UIKit

class ViewControllerForTabBar: UITabBarController {

    // MARK: IBInspactable
    @IBInspectable var initialIndex: Int = 0
    
    // MARK: Applications Overriden method
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex
    }
    
}
