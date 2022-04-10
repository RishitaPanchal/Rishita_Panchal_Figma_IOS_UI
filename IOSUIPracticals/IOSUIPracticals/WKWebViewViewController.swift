//
//  WKWebViewViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/03/22.
//

import UIKit
import WebKit

class WKWebViewViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: Overridden merthod
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: loadURL()))
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            if webView.isLoading {
                activityIndicator.startAnimating()
                activityIndicator.isHidden = false
            } else {
                activityIndicator.stopAnimating()
                activityIndicator.isHidden =  true
            }
        }
    }
    
    // MARK: Methods
    func loadPDF() -> URL {
        let path = Bundle.main.path(forResource: "Internal Review  Report II.pptx (1)", ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        return url
    }
    
    func loadURL() -> URL {
        let url = URL(string: "https://www.google.com/")
        return url!
    }
    
    func loadHTML() -> URL {
        let path = Bundle.main.path(forResource: "demo", ofType: "html")
        let url = URL(fileURLWithPath: path!)
        return url
    }
    
    // MARK: IBActions
    @IBAction func chooseOption(_ sender: UISegmentedControl) {
        switch segmentControll.selectedSegmentIndex {
        case  0:
            webView.load(URLRequest(url: loadURL()))
            break
        case 1:
            webView.load(URLRequest(url: loadPDF()))
        case 2:
            webView.load(URLRequest(url: loadHTML()))
        default:
            print("No choice!!")
        }
    }
    
}
