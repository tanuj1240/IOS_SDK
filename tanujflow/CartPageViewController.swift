//
//  CartPageViewController.swift
//  tanujflow
//
//  Created by Tanuj Sharma on 22/05/24.
//

import UIKit
import MoEngageSDK
import MoEngageCards

class CartPageViewController: UIViewController {
    
    //    @IBOutlet weak var Action: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitClick(_ sender: UIButton) {
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Payment Done", withProperties: nil)
    }
    
    
    @IBAction func BellButton(_ sender: UIButton) {
        MoEngageSDKCards.sharedInstance.pushCardsViewController(toNavigationController: self.navigationController!)
     
    // To Present MoEngageCardsListViewController
        MoEngageSDKCards.sharedInstance.presentCardsViewController()
        
        MoEngageSDKCards.sharedInstance.getCardsViewController(withUIConfiguration: nil, withCardsViewControllerDelegate: nil, forAppID: "3VR8WLDC2GU19AFN4RSEA8UE") { cardsController in
     print("fetched CardsController")
    }
    
   
}
    
    //    @IBAction func Payment(_ sender: UIButton) {
    //        MoEngageSDKAnalytics.sharedInstance.trackEvent("Payment Done", withProperties: nil)
    //    }
    
}
