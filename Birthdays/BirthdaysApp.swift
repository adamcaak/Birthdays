//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Łukasz Adamczak on 07/07/2025.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            .modelContainer(for: Friend.self)
        }
    }
}
