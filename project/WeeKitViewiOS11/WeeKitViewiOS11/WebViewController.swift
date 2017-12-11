//
//  WebViewController.swift
//  WeeKitViewiOS11
//
//  Created by Gmo Ginppian on 11/12/17.
//  Copyright © 2017 com.bancomer.bbva.prueba. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webViewContainer: UIView!
    var wkwebView: WKWebView!

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 11.0, *) {
            // Running iOS 11 OR NEWER
            starWKWebConfiguration()
        } else {
            // Earlier version of iOS
            starWebViewConfiguration()
        }
        
    }

}

extension WebViewController {
    
    func starWKWebConfiguration() {
        
        
        let webConfiguration = WKWebViewConfiguration()
        let customFrame = CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: 0.0, height: self.webViewContainer.frame.size.height))
        self.wkwebView = WKWebView (frame: customFrame , configuration: webConfiguration)
        wkwebView.translatesAutoresizingMaskIntoConstraints = false
        self.webViewContainer.addSubview(wkwebView)
        wkwebView.topAnchor.constraint(equalTo: webViewContainer.topAnchor).isActive = true
        wkwebView.rightAnchor.constraint(equalTo: webViewContainer.rightAnchor).isActive = true
        wkwebView.leftAnchor.constraint(equalTo: webViewContainer.leftAnchor).isActive = true
        wkwebView.bottomAnchor.constraint(equalTo: webViewContainer.bottomAnchor).isActive = true
        wkwebView.heightAnchor.constraint(equalTo: webViewContainer.heightAnchor).isActive = true
        wkwebView.uiDelegate = self
        
        let myURL = URL(string: "https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        wkwebView.load(myRequest)
    }
    
    func starWebViewConfiguration() {
        
        webView.delegate = self
        
        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
    }
    
}

extension WebViewController: WKUIDelegate {
    
}

extension WebViewController: UIWebViewDelegate {
    
}
