//
//  bmiViewController.swift
//  BmiJSB
//
//  Created by 소프트웨어컴퓨터 on 2022/12/12.
//

import UIKit
import WebKit

class bmiViewController: UIViewController {

    
    @IBOutlet weak var webview: WKWebView!
    @IBAction func gomusic(_ sender: UIButton) {
        let myURL = URL(string:"https://www.melon.com/chart/index.htm")
        let myRequest = URLRequest(url: myURL!)
        webview.load(myRequest)    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://m.melon.com/")
               let myRequest = URLRequest(url: myURL!)
               webview.load(myRequest)     }
    
}

    
    
    



