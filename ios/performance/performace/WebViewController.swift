//
//  WebViewController.swift
//  performance
//
//  Created by libin on 2020/1/30.
//  Copyright © 2020 cn.bingoli. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKUIDelegate,WKNavigationDelegate {
    
    var url : String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let myURL = URL(string: url) else {
            return
        }
        
        let webView: WKWebView = WKWebView.init(frame: self.view.bounds)
        view.addSubview(webView)
        
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
    }
}
