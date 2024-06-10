//
//  PaymentSuccessfulViewController.swift
//  tanujflow
//
//  Created by Tanuj Sharma on 21/05/24.
//

import UIKit
import MoEngageSDK

class PaymentSuccessfulViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func DownloadInvoice(_ sender: UIButton) {
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Download Invoice", withProperties: nil)
        
    }
    


}
