//
//  toDoListManager.swift
//  ToDoListProject
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import Foundation
import SwiftUI


@Observable
class toDoListManager {
    var items: [toDoItem] = [
        toDoItem(title:"Wake Up"),
        toDoItem(title:"Create a to-do list app"),
        toDoItem(title:"Learn SwiftUI")
    ]
    
    
    func addItem(title: String) {
        items.append(toDoItem(title: title))
    }
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
