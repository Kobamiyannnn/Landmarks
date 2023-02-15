//
//  Landmark.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/14
//  
//

import Foundation
import SwiftUI
import CoreLocation

// Adding Codable conformance makes it easier to move data between the structure and a data file.
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String // Read the name of the image from the data.
    // Loads an image from the asset catalog.
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}