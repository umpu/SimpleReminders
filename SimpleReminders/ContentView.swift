//
//  ContentView.swift
//  SimpleReminders
//
//  Created by Andrei Gorbunov on 06.02.2024.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Bindable var reminder: Reminder
    @Environment(\.modelContext) var modelContext
    @Query var reminders: [Reminder]
    @State private var path = [Reminder]()
    
    var body: some View {
        ForEach(reminders) { reminder in
            Text(reminder.title)
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Reminder.self, configurations: config)
        let example = [Reminder(title: "1"), Reminder(title: "1")]
        return ContentView(reminder: example[0])
            .modelContainer(container)
    } catch {
        fatalError("Не удалось создать контейнер модели")
    }
}
