//
//  RESTfulViewController.swift
//  NetworkDevolopment
//
//  Created by Rebecca Zhang on 2019/2/14.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class RESTfulViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func fetchAction(_ sender: UIButton) {
        Music.fetch(withId: 1) { music in
            print(music.description ?? "No description")
            music.description = "A new description for learning"
            music.dict = ["key1":99]
            if let musicData = try? JSONEncoder().encode(music) {
                if let anotherMusic = try? JSONDecoder().decode(Music.self, from: musicData) {
                    print(anotherMusic.dict ?? "No data")
                }
            }
        }
        
//        Music.fetchAll { (list) in
//            print(list.count)
//        }
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
