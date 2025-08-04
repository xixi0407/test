//
//  testingApp.swift
//  testing
//
//  Created by Xiying Fan on 8/4/25.
//

import SwiftUI

@main
struct testingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            #if os(macOS)
                .frame(width: 400, height: 400)
            #endif
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
        #elseif os(visionOS)
        .defaultSize(width: 0.4, height:0.4, depth: 0.0, in: .meters)
        .windowResizability(.contentSize)
        #endif
    }
}
