//
//  PageView.swift
//  Landmarks
//
//  Created by Barend Johannes van der Walt on 17/10/2024.
//

import SwiftUI


struct PageView<Page: View>: View {
    var pages: [Page]


    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
