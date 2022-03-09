import UIKit

class ViewControllerTabTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewCOntroller 2 : ViewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewCOntroller 2 : ViewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 2 : ViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 2 : viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 2 : viewDidDisappear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ViewController 2 : viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController 2 : viewDidLayoutSubviews")
    }
    
}


