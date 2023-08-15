//
//  HomeView.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            
            MapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView()
            } else {
                HStack(spacing: 20) {
                    //MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                        
                    
                    LocationSearchActivation()
                        .onTapGesture {
                            withAnimation(.spring()) {
                                showLocationSearchView.toggle()
                            }
                        }
                }
                .padding(.top, 29)
                .padding(.leading, 50)
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.trailing, 345)
                .padding(.top, 19)
        }
    }
}

#Preview {
    HomeView()
}
