//
//  ReelView.swift
//  Reels
//
//  Created by Sem Cruiming on 08/08/2024.
//

import SwiftUI
import AVKit

/// Reel View
struct ReelView: View {
    @Binding var reel: Reel
    @Binding var likedCounter: [Like]
    var size: CGSize
    var safeArea: EdgeInsets
    /// View Properties
    @State private var player: AVPlayer?
    
    var body: some View {
        GeometryReader { _ in
            /// Custom Video Player View
            CustomVideoPlayer(player: $player)
            /// Creating Player
                .onAppear {
                    guard player == nil else { return }
                    guard let bundleID = Bundle.main.path(forResource: reel.videoID, ofType: "mp4") else { return }
                    let videoURL = URL(filePath: bundleID)
                    player = AVPlayer(url: videoURL)
                }
        }
    }
}

#Preview {
    ContentView()
}
