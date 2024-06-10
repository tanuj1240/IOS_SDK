//
//  DetailPageViewController.swift
//  tanujflow
//
//  Created by Tanuj Sharma on 21/05/24.
//

import UIKit
import MoEngageSDK
import MoEngageInApps

class DetailPageViewController: ViewController, MoEngageInAppNativeDelegate {
    func inAppShown(withCampaignInfo inappCampaign: MoEngageInApps.MoEngageInAppCampaign, forAccountMeta accountMeta: MoEngageCore.MoEngageAccountMeta) {
        print("InApp clicked with campaign")
    }
    
    func inAppClicked(withCampaignInfo inappCampaign: MoEngageInApps.MoEngageInAppCampaign, andNavigationActionInfo navigationAction: MoEngageInApps.MoEngageInAppNavigationAction, forAccountMeta accountMeta: MoEngageCore.MoEngageAccountMeta) {
        print("InApp clicked with campaign")
    }
    
    func inAppClicked(withCampaignInfo inappCampaign: MoEngageInApps.MoEngageInAppCampaign, andCustomActionInfo customAction: MoEngageInApps.MoEngageInAppAction, forAccountMeta accountMeta: MoEngageCore.MoEngageAccountMeta) {
        print("InApp clicked with campaign")
    }
    
    func inAppDismissed(withCampaignInfo inappCampaign: MoEngageInApps.MoEngageInAppCampaign, forAccountMeta accountMeta: MoEngageCore.MoEngageAccountMeta) {
        print("InApp dismissed callback for campaign")
    }
    
    func selfHandledInAppTriggered(withInfo inappCampaign: MoEngageInApps.MoEngageInAppSelfHandledCampaign, forAccountMeta accountMeta: MoEngageCore.MoEngageAccountMeta) {
        print("InApp clicked with campaign")
    }
    
    
    
    @IBOutlet weak var NameLabel: UILabel!
    
    
    @IBOutlet weak var EmailLabel: UILabel!
    
    
    @IBOutlet weak var PhoneNumberLabel: UILabel!
    
    
    @IBOutlet weak var GenderLabel: UILabel!
    
    
    @IBOutlet weak var LanguageLabel: UILabel!
    
    
    
    var Name : String?
    var Email : String?
    var PhoneNumber : String?
    var Gender : String?
    var Language : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myPassedName = Name{
            NameLabel.text = myPassedName
        }
        if let myPassedEmail = Email{
            EmailLabel.text = myPassedEmail
        }
        if let myPassedPhone = PhoneNumber{
            PhoneNumberLabel.text = myPassedPhone
        }
        if let myPassedGender = Gender{
            GenderLabel.text = myPassedGender
        }
        if let myPassedLanguage = Language{
            LanguageLabel.text = myPassedLanguage
        }
        
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Profile viewed", withProperties: nil)
                MoEngageSDKInApp.sharedInstance.showInApp()
                MoEngageSDKInApp.sharedInstance.setInAppDelegate(self)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToStoreButtonPressed(_ sender: UIButton) {
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Go to store", withProperties: nil)
    }
    
    

}
