//
//  ViewController.swift
//  NetworkDevolopment
//
//  Created by Rebecca Zhang on 2019/1/31.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func disemvowel(_ s: String) -> String {
        let vowel = "aeiouAEIOU"
        var result: String = ""

        s.replacingOccurrences(of: <#T##StringProtocol#>, with: <#T##StringProtocol#>)
        s.replaceSubrange(<#T##bounds: Range<String.Index>##Range<String.Index>#>, with: <#T##Collection#>)
        
        return result
    }
}

