//
//  incrementWatchAppApp.swift
//  incrementWatchApp WatchKit Extension
//
//  Created by Tracy Black on 10/15/21.
//

import SwiftUI

@main
struct incrementWatchAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
