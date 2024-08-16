//
//  Like.swift
//  Reels
//
//  Created by Sem Cruiming on 08/08/2024.
//

import SwiftUI

/// Like Animation Model
struct Like: Identifiable {
    var id: UUID = .init()
    var tappedRect: CGPoint = .zero
    var isAnimated: Bool = false
}
