//
//  FirstSwiftUINavigationStack.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct FirstSwiftUINavigationStack: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                HStack {
                    Circle()
                    Text("Destination View")
                }
                .navigationTitle("Circle Title")
            } label: {
                Text("Got to Destination View")
            }
            .navigationTitle("Home Title")
        }
    }
}

#Preview {
    FirstSwiftUINavigationStack()
}
