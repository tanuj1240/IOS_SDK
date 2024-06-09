//
//  NotificationService.swift
//  InternsNotificationService
//
//  Created by Tanuj Sharma on 04/06/24.
//

import UserNotifications
// 1st Step
import MoEngageRichNotification
 
class NotificationService: UNNotificationServiceExtension {
 
    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?
 
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
    
        // 2nd Step
      MoEngageSDKRichNotification.setAppGroupID("group.com.moengage.MIPL567.demo.moengage")
    
      self.contentHandler = contentHandler
      bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)
      
      // 3rd Step
      MoEngageSDKRichNotification.handle(richNotificationRequest: request, withContentHandler: contentHandler)
        
    }
    
    override func serviceExtensionTimeWillExpire() {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
        if let contentHandler = contentHandler, let bestAttemptContent =  bestAttemptContent {
            contentHandler(bestAttemptContent)
        }
    }
 
}
