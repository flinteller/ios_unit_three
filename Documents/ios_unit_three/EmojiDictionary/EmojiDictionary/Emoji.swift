//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Brian Wilkinson on 4/23/19.
//  Copyright © 2019 Brian Wilkinson. All rights reserved.
//  Flint Eller
//  4/29/19
//  This file creates a class that allows us to organize and symplify the emoji data when coding our table view

import Foundation

class Emoji {
    
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
