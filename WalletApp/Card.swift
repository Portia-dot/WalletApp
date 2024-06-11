//
//  Card.swift
//  WalletApp
//
//  Created by Modamori Oluwayomi on 2024-06-10.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID().uuidString
    var name: String
    var cardNumber: String
    var cardImage: String
}

var cards: [Card] = [
Card(name: "Oluwayomi Noah", cardNumber: "4342 3456 2423 2345", cardImage: "Card1"),
Card(name: "Noah", cardNumber: "3453 5532 4533 4554", cardImage: "Card2"),
Card(name: "Modamori Oluwayomi", cardNumber: "3453 5532 4533 3454", cardImage: "Card3"),
]
