//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Joanna Rodriguez on 7/31/24.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
