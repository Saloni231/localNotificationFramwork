//
//  orderPlacedNotification.swift
//  localNotificationFramwork
//
//  Created by Capgemini-DA078 on 25/09/22.
//

import Foundation
import UserNotifications

public class OrderPlacedNotifiction {
    
    public init() {
        
    }
    
    //MARK: Local Notification Function
    public func orderPlaced() {
        
        let notifContent = UNMutableNotificationContent()
        
        notifContent.title = "Shopping App"
        notifContent.body = "Order Placed Successfully.\nThanks for using app."
        notifContent.badge = NSNumber(value: 1)
        
        let notifTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let notifRequest = UNNotificationRequest(identifier: "ShoppingApp", content: notifContent, trigger: notifTrigger)
        
        UNUserNotificationCenter.current().add(notifRequest) {
            (error) in
            
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
