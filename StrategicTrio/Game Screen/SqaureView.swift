//
//  SqaureView.swift
//  StrategicTrio
//
//  Created by Aakash Ambodkar on 8/3/24.
//

import SwiftUI

struct SqaureView: View {

    @EnvironmentObject var game: GameService
    let index: Int
    var body: some View {
        Button {
            if !game.isThinking {
                game.makeMove(at: index)
            } 
        } label: {
            game.gameBoard[index].image
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        }
        .disabled(game.gameBoard[index].player != nil)
        .foregroundColor(.primary)
        
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SqaureView(index: 1)
        .environmentObject(GameService())
    SqaureView()
}
