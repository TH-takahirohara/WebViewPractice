//
//  WebViewController.swift
//  WebViewPractice
//
//  Created by 原昂大 on 2020/01/08.
//  Copyright © 2020 takahiro.hara. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.apple.com/jp/")
        let request = URLRequest(url: url!)
        webView.load(request)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viedDidDisappear has been called.")
    }

    // webViewDidCloseは呼ばれず
//    func webViewDidClose(_ webView: WKWebView) {
//        print("webView has been closed.")
//    }
}
