//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Barend Johannes van der Walt on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
