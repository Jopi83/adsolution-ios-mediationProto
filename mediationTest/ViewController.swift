
//#import "ANBannerAdView.h"

//  ViewController.swift
//  adnxsmediationSP
//
//  Created by adtech Test on 20.08.18.
//  Copyright © 2018 Spring Media. All rights reserved.
//

import UIKit
import AppNexusSDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 85)
        label.textAlignment = .center
        label.text = "I'am a test label"
        
        // if ANAdAdapterBannerDFP exists
        let adClass = NSClassFromString("ANAdAdapterBannerDFP");//ANAdView //ANAdAdapterBannerDFP
        if (!(adClass != nil)) {
            label.text = "NoNoNoooo"
        }
        
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
        // Get the screen size so we can center our 300x50 example ad.
        let  screenRect  = UIScreen.main.bounds
        let  centerX     = (screenRect.size.width / 2) - 150
        let  centerY     = (screenRect.size.height / 2) - 125
        
        // Set up some sizing variables we'll need when we create our ad view.
        let  adWidth = 300
        let adHeight = 250
        let  rect  = CGRect(x:centerX, y:centerY, width:300, height:250)
        //let  size  = CGSize(width:adWidth, height:adHeight)
        
        // Create the banner ad view and add it as a subview.
        let  banner:MediatedAd?  = MediatedAd(frame:rect, memberId:7823, inventoryCode:"adtechnology.axelspringer.de-app-test-mediation_index-mrec", adWidth:adWidth, adHeight:adHeight, andSlotUUID: "63c4c4c6-1e0b-4666-b8cd-7994163e0552")
        
        //banner.addCustomKeyword(withKey: "test", value: "true")
        banner?.rootViewController = self;
        banner?.autoRefreshInterval = 60   // just for testing
        self.view.addSubview(banner!)
        // Load an ad!
        banner?.loadAd()
        
        
        /*azloader.loadAd(DTBAdCallback(){
         override func onSuccess(DTBAdResponse dtbAdResponse){}
         override func onFailure(DTBAdError dtberror){}
         
         })*/
        /*DTBAdSize *size = [[DTBAdSize alloc] initInterstitialAdSizeWithSlotUUID:@"xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"];
         DTBAdLoader *adLoader = [DTBAdLoader new];
         [adLoader setSizes:size, nil];
         [adLoader loadAd:self];
         */
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

