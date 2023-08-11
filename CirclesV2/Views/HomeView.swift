//
//  HomeView.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        MapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
