//
//  ViewController.swift
//  WeeKitViewiOS11
//
//  Created by Gmo Ginppian on 11/12/17.
//  Copyright © 2017 com.bancomer.bbva.prueba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func letsGo(_ sender: UIButton) {
        
        let xibView = WebViewController()
        self.navigationController?.pushViewController(xibView, animated: true)
    }
    
}


