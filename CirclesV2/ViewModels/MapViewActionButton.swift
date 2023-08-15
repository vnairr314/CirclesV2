//
//  MapViewActionButton.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                showLocationSearchView.toggle()
            }
        } label: {
            Image(systemName: showLocationSearchView ? "chevron.backward" : "location.circle")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
                //.background(.ultraThinMaterial)
                .clipShape(Circle())
                .shadow(color: .black, radius: 0.3)
        }
        //.frame(width: 50, height: 100)
        .frame(maxWidth: 45, alignment: .leading)
    }
}

#Preview {
    MapViewActionButton(showLocationSearchView: .constant(true))
}
