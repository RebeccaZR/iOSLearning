//
//  MockMusic.swift
//  ElementsTests
//
//  Created by Rebecca Zhang on 2019/1/23.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import Foundation
@testable import Elements

class MockMusic: Music {
    override func fetchMusic(completion: @escaping ([[String : Any]]?, Error?) -> Void) {
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.path(forResource: "JSON", ofType: "txt") {
            if let data = try? Data.init(contentsOf: URL.init(fileURLWithPath: path)) {
                let parsedData = self.parseJSON(data: data)
                completion(parsedData, nil)
            }
        }
    }
}
