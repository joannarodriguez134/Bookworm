//
//  DataController.swift
//  Bookworm
//
//  Created by Joanna Rodriguez on 7/31/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    // prepares to use data model (doesnt load it)
    let container = NSPersistentContainer(name: "Bookworm")
    
    // load data
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load \(error.localizedDescription)")
            }
        }
    }
}
