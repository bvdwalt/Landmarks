//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Barend Johannes van der Walt on 16/10/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
