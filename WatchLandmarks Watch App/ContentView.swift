//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Barend Johannes van der Walt on 17/10/2024.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
