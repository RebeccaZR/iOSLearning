//
//  DetailViewController.swift
//  MVPDemo
//
//  Created by Rebecca Zhang on 2019/2/22.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    @IBAction func onTappedAction(_ sender: UIButton) {
        // If we want to open the app after iOS 9, we should add LSApplicationQueriesSchemes
        // into Info.plist. The app should in the white list
        guard let appURL = URL(string: "elementsapp://?message=It's+a+message+from+another+app!"), UIApplication.shared.canOpenURL(appURL) else {
            print("Could not open elements app")
            return
        }
//        let appURL = URL(string: "elementsapp://") ?? nil
        UIApplication.shared.open(appURL, options: [:]) { (success) in
            if success == false {
                print("Could not poen URL \(appURL.absoluteString)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

