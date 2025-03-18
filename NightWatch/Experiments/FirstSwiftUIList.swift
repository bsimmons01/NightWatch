//
//  FirstSwiftUIList.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/18/25.
//

import SwiftUI

struct FirstSwiftUIList: View {
    var body: some View {
        List {
            Text("Check all windows")
            Text("Check all doors")
            Text("Check that the safe is locked")
            Text("Inspect security cameras")
            Text("Clear ice from sidewalks")
            Text("Document \"strange and unusual\" occurrences")
        }
    }
}

#Preview {
    FirstSwiftUIList()
}
