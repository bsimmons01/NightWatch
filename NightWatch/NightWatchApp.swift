//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/17/25.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @State private var nightWatchViewModel = NightWatchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchViewModel: nightWatchViewModel)
        }
    }
}
