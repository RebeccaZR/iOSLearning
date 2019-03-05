//
//  Presenter.swift
//  RealmDemo
//
//  Created by Rebecca Zhang on 2019/3/1.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation
import RealmSwift

class RealmPresenter {
    
    static let shared = RealmPresenter()
    
    let realm = try! Realm()
    
    func insert(object: Note) {
        do {
            try realm.write {
                realm.add(object)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchAllNotes() -> [Note] {
        let results = realm.objects(Note.self)
        var allNotes = [Note]()
        for item in results {
            allNotes.append(item)
        }
        return allNotes
    }
    
    func searchNote(by id: Int) -> Note? {
        return realm.objects(Note.self).filter("id EQUAIL '\(id)'").first
    }
    
    func delete(object: Note) -> Bool {
        do {
            try realm.write {
                realm.delete(object)
            }
        } catch {
            print(error.localizedDescription)
            return false
        }
        return true
    }
}
