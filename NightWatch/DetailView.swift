//
//  DetailView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct DetailView: View {
    let taskName: String
    
    var body: some View {
        Text(taskName)
        Text("Placeholder for task description")
        Text("Placeholder for mark completion button")
    }
}

#Preview {
    DetailView(taskName: "Some Task")
}
