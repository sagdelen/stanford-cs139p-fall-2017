//
//  Card.swift
//  concentration
//
//  Created by srkn on 27.12.2018.
//  Copyright © 2018 gamini. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    var hashValue: Int { return identifier }
    
    static func ==(lhs: Card, rhs: Card) -> Bool{
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    //MARK: handle touch card behavior
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
