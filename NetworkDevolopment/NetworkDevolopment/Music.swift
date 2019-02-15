//
//  Music.swift
//  NetworkDevolopment
//
//  Created by Rebecca Zhang on 2019/2/14.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation

let domainURL = "https://www.orangevalleycaa.org/api/"

enum Creater : String, Codable {
    case ikoliks, bear, others
}

class Music : Codable {
    
    var guid: String?
    var music_url: String?
    var name: String?
    var description: String?
    var image_url: String?
    var dict: [String:Int]?
    var created_by: Creater?
    
    enum CodingKeys: String, CodingKey {
        case guid = "id"
        case image_url = "image"
        case music_url, name, description, dict, created_by
    }
    
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        let serverGuid = guid?.replacingOccurrences(of: "id:", with: "")
//        try container.encode(serverGuid, forKey: .guid)
//        try container.encode(name, forKey: .name)
//        try container.encode(description, forKey: .description)
//        try container.encode(music_url, forKey: .music_url)
//        let serverImageUrl = image_url?.replacingOccurrences(of: "image:", with: "")
//        try container.encode(serverImageUrl, forKey: .image_url)
//    }
//    
//    required init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        let id = try values.decode(String.self, forKey: .guid)
//        guid = "id:\(id)"
//        name = try values.decode(String.self, forKey: .name)
//        description = try values.decode(String.self, forKey: .description)
//        music_url = try values.decode(String.self, forKey: .music_url)
//        let image = try values.decode(String.self, forKey: .image_url)
//        image_url = "image:\(image)"
//    }
    
    static func fetch(withId: Int, completionHandler: @escaping (Music) -> Void) {
        let musicUrl = domainURL + "music/id/\(withId)"
        
        if let url = URL.init(string: musicUrl) {
            let task = URLSession.shared.dataTask(with: url)  { (data, response, error) in
                if let newMusic = try? JSONDecoder().decode(self, from: data!) {
                    print(error?.localizedDescription ?? "No error")
                    print(newMusic.guid ?? "No id")
                    completionHandler(newMusic)
                }
            }
            task.resume()
        }
    }
    
    static func fetchAll(completionHandler: @escaping ([Music]) -> Void) {
        let musicUrl = domainURL + "music/"
        
        if let url = URL.init(string: musicUrl) {
            let task = URLSession.shared.dataTask(with: url)  { (data, response, error) in
                if let musicList = try? JSONDecoder().decode([Music].self, from: data!) {
                    print(musicList)
                    completionHandler(musicList)
                }
            }
            task.resume()
        }
    }
    
    func saveToServer() {
        let urlString = domainURL + "music/"
        
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(self)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print(response ?? "No response")
        }
        task.resume()
    }
    
    func updateServer() {
        let urlString = domainURL + "music/id/\(self.guid!)"
        
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(self)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print(response ?? "No response")
        }
        task.resume()
    }
    
    func deleteFromServer() {
        guard let guid = self.guid else {
            return print("Guid is missing.")
        }
        let urlString = domainURL + "music/id/\(guid)"
        
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "DELETE"
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print(String.init(data: data!, encoding: .ascii) ?? "No Data")
        }
        task.resume()
    }
}
