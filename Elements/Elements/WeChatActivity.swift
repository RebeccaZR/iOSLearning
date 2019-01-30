//
//  WeChatActivity.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/29.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class WeChatActivity: UIActivity {
    override var activityTitle: String? {
        return "WeChat"
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "login")
    }
    
    override var activityType: UIActivity.ActivityType? {
        return UIActivity.ActivityType.init("WeChat")
    }
    
    override class var activityCategory: UIActivity.Category {
        return .action
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
        print("Begin to share")
    }
    
    override func perform() {
        activityDidFinish(true)
    }
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        for item in activityItems {
            if item is UIImage {
                return true
            }
            if item is String {
                return true
            }
            if item is URL {
                return true
            }
        }
        return false
    }
    
    override var activityViewController: UIViewController? {
        
        return nil
    }
    
    override func activityDidFinish(_ completed: Bool) {
        print("WeChat activity finished.")
    }
}
