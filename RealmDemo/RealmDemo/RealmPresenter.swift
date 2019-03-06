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
    private init() {}
    
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
        return realm.objects(Note.self).filter("id = \(id)").first
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
    
    func createNotebook(_ title: String) {
        let notebook = Notebook()
        notebook.title = title
        notebook.creationDate = Date()
        
        try! realm.write {
            realm.add(notebook)
        }
        
        addNotes(notebook)
    }
    
    func addNotes(_ notebook: Notebook) {
        //demo data
        for i in 0...10 {
            let note = Note()
            note.title = "Note \(i)"
            note.content = "This is note \(i) content. --\(Date())"
            
            try! realm.write {
                notebook.notes.append(note)
            }
        }
    }
    
    func fetchNotebook() {
        if let notebook = realm.objects(Notebook.self).last {
            print("Notebook: \(notebook.title)")
            if let note = notebook.notes.first {
                print(note)
            }
        }
    }
}
