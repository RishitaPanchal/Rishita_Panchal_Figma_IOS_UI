//
//  NotificationManager.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 09/06/22.
//

import Foundation
import UIKit

class NotificationManager: UNMutableNotificationContent {

    // MARK: - Instance variables
    var center = UNUserNotificationCenter.current()
    var actions = [UNNotificationAction]()
    
    // MARK: - Initializers
    init(title: String, message: String, subTitle: String) {
        super.init()
        self.title = title
        self.body = message
        self.subtitle = subTitle
        self.sound = UNNotificationSound.default
        self.categoryIdentifier = "allreply.action"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func replyAction(identifier: String, title: String, textInputButtonTitle: String, textInputPlaceHolder: String) {
        let textInput = UNTextInputNotificationAction.init(
            identifier: identifier,
            title: title,
            textInputButtonTitle: textInputButtonTitle,
            textInputPlaceholder: textInputPlaceHolder)
        actions.append(textInput)
    }

    func setupAction(identifier: String, title: String, options: UNNotificationActionOptions) {
        let doneAction = UNNotificationAction.init(identifier: identifier, title: title, options: options)
        actions.append(doneAction)
    }
    
    func addAttatchMent(image: String, extensionn: String) {
        guard let url = Bundle.main.url(forResource: image, withExtension: extensionn) else { return }
        do {
            let attachment = try UNNotificationAttachment(identifier: "imageTag", url: url, options: nil)
            self.attachments = [attachment]
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func showAction() {
        print(actions)
        let pushNotificationButtons = UNNotificationCategory(
            identifier: "allreply.action",
            actions: actions,
            intentIdentifiers: [])
        center.setNotificationCategories([pushNotificationButtons])
    }
    
    func createNotification() {
        let delayTimeTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: self, trigger: delayTimeTrigger)
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

// MARK: - Extensions
extension NotificationManager: UNUserNotificationCenterDelegate {
 
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound])
    }
    
}
