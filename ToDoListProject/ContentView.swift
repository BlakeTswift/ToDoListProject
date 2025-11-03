//
//  ContentView.swift
//  ToDoListProject
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    //classes are like blueprints that plan new parts of a project
    
    @Environment(toDoListManager.self) var manager
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach (manager.items) { item in
                    NavigationLink {
                        toDoDetailView(item: item)
                        
                    }
                    label:{
                        HStack {
                            Image(systemName: item.isComplete ? "checkmark.circle.fill" : "circle")
                            Text(item.title)
                                .strikethrough(item.isComplete,pattern: .solid,color:.red)
                                .foregroundStyle(priorityColor(item.priority))
                        }
                        
                    }
                        
                }
                .onDelete(perform: manager.deleteItem)
                
            }
            
            .scrollContentBackground(.hidden)
            .background(.myTan)
            .navigationTitle(Text("To Do List"))
            .toolbar {
                EditButton()
                Button("Add") {
                    manager.addItem(title: "New To Do")
                }
                
            }
        }
        
    }
}
func priorityColor(_ priority: Int) -> Color {
    switch priority {
    case 1:
        return .green
    case 2:
        return .yellow
    case 3:
        return .red
    default:
        return .black
    }
}

#Preview {
    @Previewable @State var mockManager = toDoListManager()

    ContentView()
        .environment(mockManager)
}
