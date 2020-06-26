//
//  ContentView.swift
//  swiftuiProjetoREST
//
//  Created by Pietro Pugliesi on 14/02/20.
//  Copyright © 2020 Pietro Pugliesi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        
        TabView {
            NoteListView()
            
            AddNoteView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NoteListView: View {
    var body: some View {
        List(0 ..< 5) { item in
            
            HStack {
                Text("detail")
                Text("title")
            }
            
        }
        .tabItem {
            Image(systemName: "pencil.circle.fill")
            Text("tab1")
        }
    }
}

struct AddNoteView: View {
    @State private var noteTitle = ""
    var body: some View {
        TextField("", text:$noteTitle)
            .tabItem {
                Image(systemName: "plus")
                Text("Adicionar")
        }
    }
}


