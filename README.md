WebKit View - The Right Implementation
============

## About

<p align="justify">
	This imlpementatation support from iOS 11 or less.
</p>

<p align="center">
	<img src="imgs/img1.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img2.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img3.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img4.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img5.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img6.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img7.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img8.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img9.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img10.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img11.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img12.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img13.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img14.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img15.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img16.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img17.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img18.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img19.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img20.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img21.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img22.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img23.png" width="720px" height="450px">
</p>

<p align="center">
	<img src="imgs/img24.png" width="720px" height="450px">
</p>

## Source

```swift
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
```
