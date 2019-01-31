//
//  CollectionViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/30.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CollectionCell"

struct ItemInfo {
    var name: String
    var description: String
}

class CollectionViewController: UICollectionViewController {
    
    var items: [ItemInfo] = []
    var currentItemIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let itemsPerRow: CGFloat = 3
            let padding: CGFloat = 5
            let totalPadding = padding * (itemsPerRow - 1)
            let individualPadding = totalPadding / itemsPerRow
            let width = collectionView.frame.width / itemsPerRow - individualPadding
            let height = width
            layout.itemSize = CGSize(width: width, height: height)
            layout.minimumInteritemSpacing = padding
            layout.minimumLineSpacing = padding
        }
        
        for i in 0...14 {
            let item = ItemInfo(name: "item\(i)", description: "It is \(i) item.")
            items.append(item)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let subVC = segue.destination as? CollectionCellViewController {
            subVC.currentItem = items[currentItemIndex]
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        if let customCell = cell as? CollectionViewCell {
            customCell.label.text = "\(items[indexPath.row].name)"
            return customCell
        }
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentItemIndex = indexPath.row
        performSegue(withIdentifier: "ShowCollectionCellDetail", sender: nil)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
