//
//  Reminder.swift
//  SimpleReminders
//
//  Created by Andrei Gorbunov on 06.02.2024.
//

import Foundation
import SwiftData

@Model
class Reminder {
    var title: String
    var isCompleted: Bool
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
}
