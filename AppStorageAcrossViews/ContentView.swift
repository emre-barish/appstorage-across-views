//
//  ContentView.swift
//  AppStorageAcrossViews
//
//  Created by Emrè Barish on 06/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 1
    let range: ClosedRange = 0...9
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TabOne(stepValueRange: range)
                .tabItem {
                    Label("Tab One", systemImage: "1.circle.fill")
                }
                .tag(1)
            TabTwo(stepValueRange: range)
                .tabItem {
                    Label("Tab Two", systemImage: "2.circle.fill")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
