//
//  BrowserViewController.swift
//  TabBarApp
//
//  Created by Lucas Domene on 13/08/18.
//  Copyright © 2018 Lucas Domene. All rights reserved.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKUIDelegate {

	// MARK: - @IBOutlets
	
	@IBOutlet weak var webView: WKWebView!
	
	// MARK: - View Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		loadView()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		loadGoogle()
	}
	
	// MARK: - Setup
	
	override func loadView() {
		let webConfiguration = WKWebViewConfiguration()
		webView = WKWebView(frame: .zero, configuration: webConfiguration)
		webView.uiDelegate = self
		view = webView
	}
	
	func loadGoogle() {
		if let url = URL(string: "https://google.com") {
			let urlRequest = URLRequest(url: url)
			webView.load(urlRequest)
		}
	}
	
}
