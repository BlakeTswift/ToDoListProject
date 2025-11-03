//
//  toDoItem.swift
//  ToDoListProject
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import Foundation
import SwiftUI

 
@Observable
class toDoItem: Identifiable {
    let id = UUID()
    var title: String
    var isComplete: Bool
    var priority: Int
    
    init(title: String, isComplete: Bool = false) {
        self.title = title
        self.isComplete = isComplete
        self.priority = 0
    }
}
