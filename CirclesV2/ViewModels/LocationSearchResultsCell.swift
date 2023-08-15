//
//  LocationSearchResultsCell.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                
                Text(subtitle)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultsCell(title: "test", subtitle: "testing")
}
