//
//  ViewController.swift
//  GEO
//
//  Created by Abdon Morales Jr on 11/20/20.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var uiDelegate: WKUIDelegate?
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.nytimes.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
