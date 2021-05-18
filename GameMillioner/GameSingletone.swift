//
//  GameSingletone.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 17.05.2021.
//

import Foundation


final class Game {
    static let shared = Game()
    var gameSession: [GameSession] = []
    
     func addRecord(_ record: GameSession) {
        self.gameSession.append(record)
        }
        
     func clearRecords() {
            self.gameSession = []
        }

    private init() { }
}
