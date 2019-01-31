//
//  MenuTableViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/15.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    let menuItemData = ["Label", "Button", "TextField", "Auto Layout & Size Class", "TableView by code", "Alert", "Slider & Progress Bar", "Web", "CollectionView"]
    let segueList = ["ShowLabelDetail", "ShowButtonDetail", "ShowTextFieldDetail", "ShowSizeClasses", "TableViewByCode", "ShowAlertDetail", "ShowSlider", "ShowWeb", "ShowCollection"]
    var currentMenuItem = ""
    let table = TableViewController()
//    let subView = SubViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Hide extra cells
        self.tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath)

        cell.textLabel?.text = menuItemData[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentMenuItem = menuItemData[indexPath.row]
        if segueList[indexPath.row] == "TableViewByCode" {
            navigationController?.pushViewController(table, animated: true)
        } else {
            performSegue(withIdentifier: segueList[indexPath.row], sender: nil)
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? MyUIViewController {
            viewController.myTitle = currentMenuItem
        }
    }
}
