//
//  toDoDetailView.swift
//  ToDoListProject
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import SwiftUI

struct toDoDetailView: View {
    var item: toDoItem
    
    var body: some View {
        
        Form {
            @Bindable var item = item
            
            TextField("Task Name", text:$item.title)
            
            Toggle("Complete?", isOn: $item.isComplete)
            
            if item.isComplete == false {
                
                    Text("Priority:")
                    Button {
                        item.priority = 1
                    }
                    label:{
                        Text("😀 Good")
                            .font(.system(size: 20))
                            .foregroundStyle(.green)
                    }
                    Button {
                        item.priority = 2
                    }
                    label:{
                        Text("😬 Ok")
                            .font(.system(size: 20))
                            .foregroundStyle(.yellow)
                    }
                    Button {
                        item.priority = 3
                    }
                    label:{
                        Text("😥 Bad")
                            .font(.system(size: 20))
                            .foregroundStyle(.red)
                }
            }
            }
                .scrollContentBackground(.hidden)
                .background(.myGreen)
                .padding()
                .navigationTitle(item.title)
        
        
    }
}

#Preview {
    @Previewable @State var MockItem = toDoItem(title: "Preview Task", isComplete: false)
    toDoDetailView(item: MockItem)
}
