//
//  LocationSearchView.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct LocationSearchView: View {
    
    @StateObject var viewModel = LocationSearchViewModel()
    
    @State private var showLocationSearchView = true
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                
                TextField("Search here...", text: $viewModel.queryFragment)
                    //.padding(.trailing)
                    .foregroundColor(Color(.darkGray))
                    .frame(width: UIScreen.main.bounds.width - 75, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color(UIColor.systemGray5)).shadow(color: .black, radius: 2))
            }
            .padding(.top, 20)
            .padding(.trailing)
            
            Divider()
                .padding(.vertical)
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultsCell(title: result.title, subtitle: result.subtitle)
                    }
                }
            }
        }
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    LocationSearchView()
}
