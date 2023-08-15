//
//  WebViewController.swift
//  BmiJSB
//
//  Created by 소프트웨어컴퓨터 on 2022/12/05.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBAction func gotoNaver(_ sender: UIButton) {
        let myURL = URL(string:"https://m.naver.com")
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://seung72.tistory.com/")
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)     }
    
}
