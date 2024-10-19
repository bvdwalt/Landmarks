//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Barend Johannes van der Walt on 17/10/2024.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
                    List {
                        PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                            .listRowInsets(EdgeInsets())
                        }
                        .listStyle(.inset)
                        .navigationTitle("Featured")
                        .toolbar {
                            Button {
                                showingProfile.toggle()
                            } label: {
                                Label("User Profile", systemImage: "person.crop.circle")
                            }
                        }
                        .sheet(isPresented: $showingProfile) {
                            ProfileHost()
                                .environment(modelData)
                        }
                } detail: {
                    Text("Select a Landmark")
                }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
