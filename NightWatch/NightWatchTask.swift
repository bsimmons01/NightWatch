//
//  NightWatchTask.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/19/25.
//

import Foundation

struct NightWatchTask: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
