//
//  WebViewController.swift
//  WebViewExample
//
//  Created by Sujeet Lohan on 2019-07-16.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    @IBOutlet weak var UrlWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let urlGoogle = URL(string: "https://www.google.com")
        UrlWebView.loadRequest(URLRequest(url:urlGoogle!))
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
