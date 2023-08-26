//
//  SimpleSearchApp.swift
//  SimpleSearch
//
//  Created by James Dempsey on 8/25/23.
//

import SwiftUI

enum ContentViewStyle {
    case list
    case navigationStack
}

@main
struct SimpleSearchApp: App {
    private let contentViewStyle: ContentViewStyle = .list

    var body: some Scene {
        WindowGroup {
            switch(contentViewStyle) {
                case .list: ContentView()
                case .navigationStack: ContentViewNav()
            }
        }
    }
}
