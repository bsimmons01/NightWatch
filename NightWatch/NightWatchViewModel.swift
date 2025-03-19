//
//  NightWatchViewModel.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/19/25.
//

import SwiftUI

@Observable
class NightWatchViewModel {
    var nightlyTasks = [
        NightWatchTask(name: "Check all windows", isComplete: false),
        NightWatchTask(name: "Check all doors", isComplete: false),
        NightWatchTask(name: "Check that the safe is locked", isComplete: false),
        NightWatchTask(name: "Inspect security cameras", isComplete: false),
        NightWatchTask(name: "Clear ice from sidewalks", isComplete: false),
        NightWatchTask(name: "Document \"strange and unusual\" occurrences", isComplete: false)
    ]
    
    var monthlyTasks = [
        NightWatchTask(name: "Test security alarm", isComplete: false),
        NightWatchTask(name: "Test motion detectors", isComplete: false),
        NightWatchTask(name: "Test smoke alarms", isComplete: false)
    ]
    
    var weeklyTasks = [
        NightWatchTask(name: "Check inside all vacant rooms", isComplete: false),
        NightWatchTask(name: "Walk the perimeter of property", isComplete: false)
    ]
}
