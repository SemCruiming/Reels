//
//  Reel.swift
//  Reels
//
//  Created by Sem Cruiming on 08/08/2024.
//

import SwiftUI

/// Reel Model & Sample Video Files
struct Reel: Identifiable {
    var id: UUID = .init()
    var videoID: String
    var authorName: String
    var isLiked: Bool = false
}

var reelsData: [Reel] = [
    .init(videoID: "Reel 1", authorName: "Los Muertos Crew"),
    .init(videoID: "Reel 2", authorName: "Jess Loiterton"),
    .init(videoID: "Reel 3", authorName: "Los Muertos Crew")
]
