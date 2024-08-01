//
//  ContentView.swift
//  Bookworm
//
//  Created by Joanna Rodriguez on 7/31/24.
//

import SwiftUI

struct ContentView: View {
    // store the view context
    @Environment(\.managedObjectContext) var moc
    
    // read out all the books we saved so far
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    @State private var showingAddScreen = false

    var body: some View {
        NavigationView {
            List {
                ForEach(books) {
                    book in NavigationLink {
                        Text(book.title ?? "Unknown title")
                    } label: {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknown title")
                                    .font(.headline)
                                
                                Text(book.author ?? "Unknown author")
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showingAddScreen.toggle()
                        }, label: {
                            Label("Add book", systemImage: "plus")
                        })
                    }
                }
                .sheet(isPresented: $showingAddScreen, content: {
                    AddBookView()
                })
        }
       
    }
}

#Preview {
    ContentView()
}
