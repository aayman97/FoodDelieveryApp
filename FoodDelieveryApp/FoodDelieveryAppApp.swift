//
//  FoodDelieveryAppApp.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 11/02/2022.
//

import SwiftUI

@main
struct FoodDelieveryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
