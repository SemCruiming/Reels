//
//  Home.swift
//  Reels
//
//  Created by Sem Cruiming on 08/08/2024.
//

import SwiftUI

struct Home: View {
    var size: CGSize
    var safeArea: EdgeInsets
    /// Video Property
    @State private var reels: [Reel] = reelsData
    @State private var likedCounter: [Like] = []
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {
                ForEach($reels) { $reel in
                    ReelView(
                        reel: $reel,
                        likedCounter: $likedCounter,
                        size: size,
                        safeArea: safeArea)
                }
                .frame(maxWidth: .infinity)
                .containerRelativeFrame(.vertical)
            }
        }
        .scrollIndicators(.hidden)
        .scrollTargetBehavior(.paging)
        .background(.black)
        .environment(\.colorScheme, .dark)
    }
}



#Preview {
    ContentView()
}
