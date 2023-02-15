//
//  LandmarksApp.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/12
//  
//

import SwiftUI

@main
struct LandmarksApp: App {
    // Use the @StateObject attribute to initialize a model object
    // for a given property only once during the life time of the app.
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
