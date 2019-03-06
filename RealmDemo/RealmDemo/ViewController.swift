//
//  ViewController.swift
//  RealmDemo
//
//  Created by Rebecca Zhang on 2019/2/27.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var note: Note? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fetchAllNotes(_ sender: Any) {
        print(RealmPresenter.shared.fetchAllNotes())
    }
    
    @IBAction func searchOneNote(_ sender: Any) {
        let testId = Int.random(in: 0 ... 10)
        note = RealmPresenter.shared.searchNote(by: testId)
        print(note ?? "Can't search the note: \(testId)")
    }
    
    @IBAction func deleteOneNote(_ sender: Any) {
        if let willBeDeleted = note {
            if RealmPresenter.shared.delete(object: willBeDeleted) {
                print("Delete note sucess.")
            }
        }
    }
    
    @IBAction func insertOneNote(_ sender: Any) {
        let willBeInserted = Note()
        willBeInserted.id = Int.random(in: 0 ... 10)
        willBeInserted.title = "Note \(willBeInserted.id)"
        willBeInserted.content = "\(willBeInserted.title) \(Date())"
        RealmPresenter.shared.insert(object: willBeInserted)
    }
    
    @IBAction func createOneNotebook(_ sender: Any) {
        RealmPresenter.shared.createNotebook("My Notebook")
    }
    
    @IBAction func fetchNotebook(_ sender: Any) {
        RealmPresenter.shared.fetchNotebook()
    }
}

