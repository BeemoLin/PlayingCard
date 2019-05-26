//
//  PlayingCardDack.swift
//  PlayingCard
//
//  Created by BeemoLin on 2019/4/18.
//  Copyright © 2019 BeemoLin. All rights reserved.
//

import Foundation

struct PlayingCardDeck
{
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: Int.random(in: 0...cards.count - 1))
        } else {
            return nil
        }
    }
    
}
