//
//  GameView.swift
//  StrategicTrio
//
//  Created by Aakash Ambodkar on 8/3/24.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("End Game") {
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
        .navigationTitle("Strategic Trio")
        .inNavigationStack()
    }
}

#Preview {
    GameView()
}
