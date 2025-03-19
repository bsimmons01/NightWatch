//
//  FirstSwiftUITabView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct FirstSwiftUITabView: View {
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home View")
    }
}

struct MapView: View {
    var body: some View {
        Text("Map View")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
    }
}

#Preview {
    FirstSwiftUITabView()
}
