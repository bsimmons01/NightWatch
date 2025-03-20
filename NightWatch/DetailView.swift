//
//  DetailView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var task: NightWatchTask
    
    var body: some View {
        VStack {
            Text(task.name)
            Button(action: {
                task.isComplete = true
            }, label: {
                Text("Mark complete")
            })
        }
    }
}

#Preview {
    DetailView(task: .constant(NightWatchTask(name: "Check all windows", isComplete: false)))
}
