//
//  MarkCompleteExperiment.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/19/25.
//

import SwiftUI

@Observable
class NightWatchTaskExperiment {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
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
            ControlPanel()
        }
    }
}

struct ControlPanel: View {
    @Environment(NightWatchTaskExperiment.self) var theTask
    
    var body: some View {
        @Bindable var theTask: NightWatchTaskExperiment = self.theTask
        HStack {
//            if theTask.isComplete {
//                Button("Reset") {
//                    theTask.isComplete = false
//                }
//            } else {
//                Button("Mark Complete") {
//                    theTask.isComplete = true
//                }
//            }
            Toggle(isOn: $theTask.isComplete) {
                Text("Task Complete")
            }
        }
    }
}

#Preview {
    MarkCompleteExperiment()
        .environment(NightWatchTaskExperiment(name: "Some Task", isComplete: false))
}
