//
//  FirstSwiftUIGrid.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct FirstSwiftUIGrid: View {
    let nightlyTasks = [
        "Check all windows",
        "Check all doors",
        "Check that the safe is locked",
        "Check the mailbox",
        "Inspect security cameras",
        "Clear ice from sidewalks",
        "Document \"strange and unusual\" occurrences"
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) { task in
                    Text(task)
                }
            }
        }
        
        ScrollView {
            LazyVGrid(columns: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) { task in
                    Text(task)
                }
            }
        }
    }
}

#Preview {
    FirstSwiftUIGrid()
}
