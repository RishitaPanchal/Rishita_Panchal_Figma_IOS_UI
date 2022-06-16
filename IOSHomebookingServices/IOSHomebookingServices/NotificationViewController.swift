//
//  NotificationViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 13/06/22.
//

import UIKit

class NotificationViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {

    // MARK: - Instance variable
    var notification = NotificationManager(title: "Home Chores", message: "Welcome to home booking setvices", subTitle: "Hey User!!")

    // MARK: - Overridden Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarTintColor()
    }
    
    // MARK: - IBActions
    @IBAction func callNotification(_ sender: UIButton) {
        createNotification()
    }
    
    @IBAction func CoreDataRelationShip(_ sender: Any) {
        coordinator?.redirectToPersonDetailes()
    }
    
    @IBAction func coreDataFetchedProperties(_ sender: Any) {
        coordinator?.redirectToFetchedPropertiesDemo()
    }
    
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.white
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    // MARK: - Functions
    func createNotification() {
        notification.setupAction(identifier: "like.action", title: "Like", options: .foreground)
        notification.setupAction(identifier: "seen.action", title: "Seen", options: .foreground)
        notification.replyAction(identifier: "reply.action", title: "Reply", textInputButtonTitle: "OK", textInputPlaceHolder: "Enter reply")
        notification.showAction()
        notification.addAttatchMent(image: "dee-copper-and-wild-yf61jhXNmYo-unsplash", extensionn: "jpg")
        notification.createNotification()
    }
    
}
