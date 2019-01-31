//
//  CollectionCellViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/30.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class CollectionCellViewController: MyUIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var currentItem: ItemInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        nameLabel.text = currentItem?.name ?? "No name found."
        descriptionLabel.text = currentItem?.description ?? "No description found."
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
