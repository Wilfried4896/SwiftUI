//
//  ModelMovies.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 17.01.2023.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable {
    var Title: String
    var Year: String
    var Released: String
    var Plot: String
    var Actors: String
    var Genre: String
    var Runtime: String
    var Images: [String]
}

var getDataFromBundle: [Movie] {
    if let url = Bundle.main.path(forResource: "Film", ofType: "JSON") {
            do {
                let data = try Data(contentsOf: URL(filePath: url))
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Movie].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return []
}

