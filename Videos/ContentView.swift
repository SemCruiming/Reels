//
//  ContentView.swift
//  Reels
//
//  Created by Sem Cruiming on 08/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            Home(size: size, safeArea: safeArea)
                .ignoresSafeArea(.container, edges: .all)
        }
    }
}

#Preview {
    ContentView()
}
