//
//  SimpleRemindersApp.swift
//  SimpleReminders
//
//  Created by Andrei Gorbunov on 06.02.2024.
//

import SwiftData
import SwiftUI

@main
struct SimpleRemindersApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(reminder: Reminder(title: "Пример"))
        }
        .modelContainer(for: Reminder.self)
    }
}
