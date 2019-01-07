//
//  ButtonViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "You clicked a normal button."
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
