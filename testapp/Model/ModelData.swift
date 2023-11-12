//
//  ModelData.swift
//  testapp
//
//  Created by Luis Niebla Rios on 11/11/23.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

// Fetch JSON data from apps main bundle
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could find in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt load from main bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldnt parse")
    }
}
