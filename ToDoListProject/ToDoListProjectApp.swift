//
//  ToDoListProjectApp.swift
//  ToDoListProject
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import SwiftUI

@main
struct ToDoListProjectApp: App {
    @State var manager = toDoListManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
        }
    }
}
