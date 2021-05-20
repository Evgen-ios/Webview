//
//  ViewController.swift
//  ManagerApp
//
//  Created by ManagerApp on 20/05/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://24litecoin.co.ua")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}
