//
//  MarkCompleteExperiment.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/19/25.
//

import SwiftUI

struct NightWatchTaskExperiment {
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}

struct MarkCompleteExperiment: View {
    @State private var theTask = NightWatchTaskExperiment(name: "Check All Windows", isComplete: false)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.$theTask)
        }
    }
}

struct ControlPanel: View {
    @Binding var theTask: NightWatchTaskExperiment
    
    var body: some View {
        HStack {
            if theTask.isComplete {
                Button("Reset") {
                    theTask.isComplete = false
                }
            } else {
                Button("Mark Complete") {
                    theTask.isComplete = true
                }
            }
        }
    }
}

#Preview {
    MarkCompleteExperiment()
}
