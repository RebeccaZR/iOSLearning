//
//  WebViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/29.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit
import SafariServices

class WebViewController: MyUIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openBrowserAction(_ sender: UIButton) {
        if let url = URL(string: "https://google.com") {
            UIApplication.shared.open(url, options: [:]) { (loadSuccess) in
                print("Does load success? \(loadSuccess)")
            }
        }
    }
    
    @IBAction func openSafariAction(_ sender: Any) {
        if let url = URL(string: "https://google.com") {
            let safariVC = SFSafariViewController(url: url)
            safariVC.delegate = self
            present(safariVC, animated: true, completion: nil)
        }
    }
    
//    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
//        controller.dismiss(animated: true, completion: nil)
//        print("This method is called when you click done button.")
//    }
    
    func safariViewController(_ controller: SFSafariViewController, initialLoadDidRedirectTo URL: URL) {
        print("\(URL)")
    }
    
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("This method is called when initial load is complete. ---\(didLoadSuccessfully)")
    }
    
    func safariViewController(_ controller: SFSafariViewController, activityItemsFor URL: URL, title: String?) -> [UIActivity] {
        print("in activityItemsFor---> \(URL) ---- title: \(title!)")
        let weChat = WeChatActivity()
        return [weChat]
    }
    
//    func safariViewController(_ controller: SFSafariViewController, excludedActivityTypesFor URL: URL, title: String?) -> [UIActivity.ActivityType] {
//        print("in excludedActivityTypesFor---> \(URL) ---- title: \(title!)")
//        return [UIActivity.ActivityType.WeChat]
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
