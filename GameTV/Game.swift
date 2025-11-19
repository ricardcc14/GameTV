//
//  Game.swift
//  GameTV
//
//  Created by Ricard Colet Cirbian on 19/11/25.
//

import Foundation

struct Game{
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: minValue...maxValue)
    private(set) var points = 0
    mutating func calculatePoints(userValue: Double){
        points = Game.maxValue - Int(abs(Double(target) - userValue))
    }
    mutating func restart(){
        target = Int.random(in: Game.minValue...Game.maxValue)
    }
    
}
