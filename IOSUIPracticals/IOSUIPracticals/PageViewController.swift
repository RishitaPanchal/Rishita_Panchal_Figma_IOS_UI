import UIKit

class PageViewController: UIPageViewController {
    
    lazy var viewControllerList:[UIViewController] = {
        let storyboard = UIStoryboard(name: "LoginSignupPractical1", bundle: nil)
        let firstviewController = storyboard.instantiateViewController(identifier: "Login")
        let secondviewController = storyboard.instantiateViewController(identifier: "SignUp")
        let thirdviewController = storyboard.instantiateViewController(identifier: "Registration")
        return [firstviewController, secondviewController, thirdviewController]
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let viewController = viewControllerList.first{
            self.setViewControllers([viewController], direction: .forward, animated: true, completion: nil)
        }
    }
  
}

extension PageViewController: UIPageViewControllerDataSource{
      
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllerList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index - 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < viewControllerList.count else {return nil}
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllerList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index + 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < viewControllerList.count else {return nil}
        return viewControllerList[previousIndex]
    }
    
}
