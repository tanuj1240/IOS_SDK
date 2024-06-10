//
//  ViewController2.swift
//  tanujflow
//
//  Created by Tanuj Sharma on 22/05/24.
//

import UIKit
import MoEngageSDK


class ViewController2: UIViewController{

    @IBOutlet weak var action1: UIButton!
    
   @IBOutlet weak var action2: UIButton!
    
   @IBOutlet weak var action3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func AddToCartMango(_ sender: UIButton) {
        var eventAttrDict : Dictionary<String,Any> = Dictionary()
        eventAttrDict["ProductName"] = "Mango"
        eventAttrDict["BrandName"] = "CountryDelight"
        eventAttrDict["Items In Stock"] = 109
         
        let eventProperties = MoEngageProperties(withAttributes: eventAttrDict)
        eventProperties.addAttribute(1, withName: "price")
        eventProperties.addAttribute("Dollar", withName: "currency")
        eventProperties.addAttribute(true, withName: "in_stock")

        MoEngageSDKAnalytics.sharedInstance.trackEvent("Added to cart", withProperties: eventProperties)
    }
    

    @IBAction func AddToCartBanana(_ sender: UIButton) {
        var eventAttrDict : Dictionary<String,Any> = Dictionary()
        eventAttrDict["ProductName"] = "Banana"
        eventAttrDict["BrandName"] = "CountryDelight"
        eventAttrDict["Items In Stock"] = 111
         
        let eventProperties = MoEngageProperties(withAttributes: eventAttrDict)
        eventProperties.addAttribute(1, withName: "price")
        eventProperties.addAttribute("Dollar", withName: "currency")
        eventProperties.addAttribute(true, withName: "in_stock")

        MoEngageSDKAnalytics.sharedInstance.trackEvent("Added to cart", withProperties: eventProperties)
    }
    
    
    @IBAction func AddToCartApple(_ sender: UIButton) {
        var eventAttrDict : Dictionary<String,Any> = Dictionary()
        eventAttrDict["ProductName"] = "Apple"
        eventAttrDict["BrandName"] = "CountryDelight"
        eventAttrDict["Items In Stock"] = 100
         
        let eventProperties = MoEngageProperties(withAttributes: eventAttrDict)
        eventProperties.addAttribute(1, withName: "price")
        eventProperties.addAttribute("Dollar", withName: "currency")
        eventProperties.addAttribute(true, withName: "in_stock")

        MoEngageSDKAnalytics.sharedInstance.trackEvent("Added to cart", withProperties: eventProperties)
    }


}
