//
//  ViewController.swift
//  WebView
//
//  Created by Sunimal Herath on 27/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addressTxtField: UITextField!
    
    @IBOutlet weak var webkitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let startUrl = URL(string: "https://www.apple.com/au")
        webkitView.load(URLRequest(url: startUrl!))
        
    }
    
    @IBAction func goBtnWasPressed(_ sender: Any) {
    }
    


}

