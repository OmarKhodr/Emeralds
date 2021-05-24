//
//  EmeraldsApp.swift
//  Emeralds
//
//  Created by Omar Khodr on 5/24/21.
//

import SwiftUI

@main
struct EmeraldsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(snippets: Snippet.data)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
