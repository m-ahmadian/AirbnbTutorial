//
//  ExploreView.swift
//  AirbnbTutorial
//
//  Created by Mehrdad Behrouz Ahmadian on 2024-03-25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
                ScrollView {
                    SearchAndFilterBar()
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0...10, id: \.self) { listing in
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                    }
                    .padding()
                }
        }
    }
}

#Preview {
    ExploreView()
}