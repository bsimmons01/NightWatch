//
//  DetailView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct DetailView: View {
    var task: NightWatchTask
    
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Text("Placeholder for mark completion button")
        }
    }
}

#Preview {
    DetailView(task: NightWatchTask(name: "Check all windows", isComplete: false))
}
