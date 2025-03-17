//
//  ContentView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Nightly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                    .textCase(.uppercase)
                    .underline()
                
                Text("Check all windows")
                Text("Check all doors")
                Text("Check that the safe is locked")
                Text("Inspect security cameras")
                Text("Clear ice from sidewalks")
                Text("Document \"strange and unusual\" occurrences")
                
                Text("Weekly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                    .padding(.top)
                    .textCase(.uppercase)
                    .underline()
                Text("Check inside all vacant rooms")
                Text("Walk the perimeter of property")
                
                Text("Monthly Tasks")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                    .padding(.top)
                    .textCase(.uppercase)
                    .underline()
                Text("Test security alarm")
                Text("Test motion detectors")
                Text("Test smoke alarms")
                
                Spacer()
            }
            .foregroundStyle(.gray)
            
            Spacer()
        }
        .padding([.top, .leading], 10.0)
    }
}

#Preview {
    ContentView()
}

// A landscape one
#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView()
})

// Old way of doing it
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

