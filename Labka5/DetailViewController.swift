//
//  DetailViewController.swift
//  Labka5
//
//  Created by Saltanat Nareshova on 07.03.2021.
//

import UIKit
import WebKit
class DetailViewController: UIViewController, WKNavigationDelegate {
    var faculty: Faculties!
    var webView: WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
  
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        loadSite()
    }
    func loadSite() {
        if let web = faculty?.url {
            webView.load(URLRequest(url: web))
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = faculty?.facultyName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
