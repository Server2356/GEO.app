//
//  ViewController.swift
//  GEO
//
//  Created by Abdon Morales Jr on 11/20/20.
//
// Updated on Feburary 10, 2021

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
        
        let myURL = URL(string:"https://nytimes.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
