//
//  ViewController.swift
//  tanujflow
//
//  Created by Tanuj Sharma on 20/05/24.
//

import UIKit
import MoEngageSDK


class ViewController: UIViewController {

    
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    @IBOutlet weak var GenderTextField: UITextField!
    
    @IBOutlet weak var LanguageTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "submitButton", sender: sender)
        MoEngageSDKAnalytics.sharedInstance.setUniqueID(EmailTextField.text!)
        MoEngageSDKAnalytics.sharedInstance.setName(NameTextField.text!)
        MoEngageSDKAnalytics.sharedInstance.setEmailID(EmailTextField.text!)
        MoEngageSDKAnalytics.sharedInstance.setMobileNumber(PhoneTextField.text!)
        MoEngageSDKAnalytics.sharedInstance.setGender(.male)
        MoEngageSDKAnalytics.sharedInstance.setUserAttribute(LanguageTextField, withAttributeName: "Language")
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Registration Complete", withProperties: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        if segue.identifier == "submitButton",
                 let destination =
                    segue.destination as?
                    DetailPageViewController{
                    destination.Name = NameTextField.text
                    destination.Email = EmailTextField.text
                    destination.PhoneNumber = PhoneTextField.text
                    destination.Gender = GenderTextField.text
                    destination.Language = LanguageTextField.text
                }
        }
}

