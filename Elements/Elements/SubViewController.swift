//
//  SubViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/15.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class SubViewController: MyUIViewController {

    var label: UILabel!
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        createLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = text
    }
    
    func createLabel() {
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
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
