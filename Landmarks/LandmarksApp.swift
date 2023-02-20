//
//  LandmarksApp.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/12
//  
//  Abstract:
//  The top-level definition of the Landmarks app.
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
        .commands {
            LandmarkCommands()
        }
    }
}
