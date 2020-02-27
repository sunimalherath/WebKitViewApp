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
        let userEnteredAddress = addressTxtField.text!
        
        if userEnteredAddress == "" {
            showErrorMessage()
            return
        }
        
        let userEnteredUrl = URL(string: userEnteredAddress)
        webkitView.load(URLRequest(url: userEnteredUrl!))
        
        for textField in self.view.subviews where textField is UITextField{
            textField.resignFirstResponder()
        }
    }
    
    private func showErrorMessage() {
        let alert = UIAlertController(title: "Invalid Entry", message: "Pleae enter a valid URL", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

