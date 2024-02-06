//
//  TestView.swift
//  SimpleReminders
//
//  Created by Andrei Gorbunov on 06.02.2024.
//

import SwiftUI

struct ReminderDesr: Codable, Identifiable {
    var id = UUID().uuidString
    var title: String
    var isCompleted: Bool = false
}

struct TestView: View {
    var colors: [Color] = [.black, .blue, .brown, .cyan, .green, .indigo, .mint, .orange, .pink, .purple, .red, .teal, .yellow]
    
    @State private var reminders = [
        ReminderDesr(title: "Напоминание один"),
        ReminderDesr(title: "Заметка два", isCompleted: true),
        ReminderDesr(title: "Длинное напоминание о важном событии на несколько строк")
    ].reversed()
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(reminders) { reminder in
                HStack {
                    Image(systemName: "circle.inset.filled").foregroundStyle(colors.randomElement()!)
                    Text(reminder.title)
                        .strikethrough(reminder.isCompleted ? true : false, color: colors.randomElement()!)
                }
                Divider()
            }
            Spacer()
            HStack {
                Spacer()
                Button("+") {
                    
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    TestView()
}
