//
//  AlertViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/24.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class AlertViewController: MyUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert Title", message: "This is alert message", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            print("OK button is clicked.  \(action)")
        }
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel button is clicked.  \(action)")
        }
        alert.addAction(cancelAction)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            print("Delete button is clicked.   \(action)")
        }
        alert.addAction(deleteAction)
        
        present(alert, animated: true) {
            print("handle alert, and execute this after the alert disappear")
        }
    }
    
    
    @IBAction func showShare(_ sender: Any) {
        let weChat = WeChatActivity()
        let activityViewController = UIActivityViewController(activityItems: ["Any data you want to share"], applicationActivities: [weChat])
        present(activityViewController, animated: true) {
            print("You can do something here when share activity view controller dismissed.")
        }
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
