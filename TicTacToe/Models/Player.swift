//
//  Player.swift
//  TicTacToe
//
//  Created by Jon Corn on 2/12/20.
//  Copyright © 2020 Jon Corn. All rights reserved.
//

import Foundation

class Player {
    var wins: Int
    var locations: [Int]
    var name: String
    
    init(wins: Int = 0, locations: [Int] = [], name: String) {
        self.wins = wins
        self.locations = locations
        self.name = name
    }
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name
    }
}
