//
//  ChakritodoApp.swift
//  Chakritodo

import SwiftUI

@main
struct ChakritodoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            AdacanaView()
        }
    }
}
