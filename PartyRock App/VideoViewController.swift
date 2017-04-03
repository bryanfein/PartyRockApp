//
//  VideoViewController.swift
//  PartyRock App
//
//  Created by Bryan Fein on 4/2/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
     var partyRock: PartyRock!
    
//    var partyRock: PartyRock {
//        get {
//            return _partyRock
//        }set {
//            return _partyRock = newValue
//        }
//        
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = partyRock.videoTitle
        webview.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
