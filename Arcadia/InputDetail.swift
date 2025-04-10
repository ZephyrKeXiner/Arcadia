//
//  InputDetail.swift
//  Arcadia
//
//  Created by 龚浩天 on 2025/4/10.
//

import SwiftUI
import SwiftData

struct InputDetail: View {
    @Environment(\.modelContext) private var modelContext
    @State private var title: String = ""
    @State private var content: String = ""
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextEditor(text: $content)
                .frame(height: 200)
                .border(Color.gray)
                .padding()
        }
        .toolbar {
            ToolbarItem(){
                Button("Save") {
                    saveNote()
                }
            }
        }
    }
    
    private func saveNote() {
        let newNote = NoteContent(title: title, content: content)
        
        modelContext.insert(newNote)
    }
}

#Preview {
    InputDetail()
}
