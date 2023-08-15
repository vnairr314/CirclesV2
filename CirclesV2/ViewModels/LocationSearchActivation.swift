//
//  LocationSearchActivation.swift
//  CirclesV2
//
//  Created by Varun Nair on 8/11/23.
//

import SwiftUI

struct LocationSearchActivation: View {
    var body: some View {
        HStack {
            Text("Search here...")
                .padding(.trailing, 160)
                .foregroundColor(Color(.darkGray))
            
            //Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 84, height: 50)
        .background(
            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color.white).shadow(color: .black, radius: 2)
        )
    }
}

#Preview {
    LocationSearchActivation()
}
