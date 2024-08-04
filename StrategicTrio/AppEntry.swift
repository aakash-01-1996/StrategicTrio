//
//  StrategicTrioApp.swift
//  StrategicTrio
//
//  Created by Aakash Ambodkar on 8/3/24.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
        }
    }
}
