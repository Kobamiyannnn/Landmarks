//
//  ModelData.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/14
//  
//  Abstract:
//  Storage for model data.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    // Because you'll never modify hike data after initially loading it,
    // you don't need to mark it with the @Published attribute.
    var hikes: [Hike] = load("hikeData.json")
    // include an instance of the user profile that persists even after the user dismisses the profile view.
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

// Method that fetches JSON data with a given name from the app's main bundle.
// The method relies on the return type's conformance to the Decodable protocol,
// which is one component of the Codable protocol.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't fine \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
