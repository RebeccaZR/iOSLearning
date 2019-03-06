//
//  Model.swift
//  RealmDemo
//
//  Created by Rebecca Zhang on 2019/2/27.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation
import RealmSwift

class Note: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var content = ""
}

class Notebook: Object {
    @objc dynamic var title = ""
    @objc dynamic var creationDate = Date()
    
    let notes = List<Note>()
}
