//
//  ContentView.swift
//  Birthdays
//
//  Created by Łukasz Adamczak on 07/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Tom", birthday: .now),
        Friend(name: "Henry", birthday: Date(timeIntervalSince1970: 0))
    ]
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
        }
    }
}

#Preview {
    ContentView()
}
