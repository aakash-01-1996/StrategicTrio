//
//  GameSquare.swift
//  StrategicTrio
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct GameSquare {
    var id: Int
    var player: Player?
    
    var image: Image {
        if let player = player {
            return player.gamePiece.image
        } else {
            return Image("none")
        }
    }
    
    static var reset: [GameSquare] {
        var squares = [GameSquare]()
        for index in 1...9 {
            squares.append(GameSquare(id: index))
        }
        return squares
    }
    
}



//  Created by Aakash Ambodkar on 8/3/24.
//

import Foundation


