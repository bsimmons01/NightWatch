//
//  ContentView.swift
//  NightWatch
//
//  Created by Brian Simmons on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @Bindable var nightWatchViewModel = NightWatchViewModel()
    @State private var focusModeOn = false
    
    var body: some View {
//        List(nightlyTasks, id: \.self) { taskName in
//            Text(taskName)
//        }
        NavigationStack {
            List {
                Section(content: {
                    ForEach($nightWatchViewModel.nightlyTasks) {
                        task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink() {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                    }
                }, header: {
                    TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")
                })
                
                Section(content: {
                    ForEach($nightWatchViewModel.weeklyTasks) { task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink() {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                    }
                }, header: {
                    TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")
                })
                
                Section(content: {
                    ForEach($nightWatchViewModel.monthlyTasks) { task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink() {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                    }
                }, header: {
                    TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")
                })
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Home"))
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {
                        Text("Focus Mode")
                    })
                    .toggleStyle(.switch)
                    .frame(width: 175)
                }
            }
        }
        
        
//        HStack {
//            VStack(alignment: .leading) {
//                HStack {
//                    //Image(systemName: "moon.stars")
//                    Text("\(Image(systemName: "moon.stars"))Nightly Tasks")
//                        .headerStyle()
//                        //.modifier(HeaderStyle())
//                }
//                
//                Text("Check all windows")
//                Text("Check all doors")
//                Text("Check that the safe is locked")
//                Text("Inspect security cameras")
//                Text("Clear ice from sidewalks")
//                Text("Document \"strange and unusual\" occurrences")
//                
//                Text("\(Image(systemName: "sunset"))Weekly Tasks")
//                    .headerStyle()
//                    .padding(.top)
//                Text("Check inside all vacant rooms")
//                Text("Walk the perimeter of property")
//                
//                Text("\(Image(systemName: "calendar"))Monthly Tasks")
//                    .headerStyle()
//                    .padding(.top)
//                Text("Test security alarm")
//                Text("Test motion detectors")
//                Text("Test smoke alarms")
//                
//                Spacer()
//            }
//            .foregroundStyle(.gray)
//            
//            Spacer()
//        }
//        .padding([.top, .leading], 10.0)
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.heavy)
            .foregroundStyle(.yellow)
            .textCase(.uppercase)
    }
}

extension View {
    public func headerStyle() -> some View {
        self.modifier(HeaderStyle())
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Text("\(Image(systemName: symbolSystemName) ) \(headerText)")
        }
        .headerStyle()
    }
}

struct TaskRow: View {
    let task: NightWatchTask
    
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundStyle(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

#Preview {
    ContentView(nightWatchViewModel: NightWatchViewModel())
}

// A landscape one
//#Preview("ContentView Landscape", traits: .landscapeRight, body: {
//    ContentView()
//})

// Old way of doing it
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
