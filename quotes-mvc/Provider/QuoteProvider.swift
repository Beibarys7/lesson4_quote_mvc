//
//  QuoteProvider.swift
//  quotes-mvc
//
//  Created by Бейбарыс Шагай on 11/10/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation

protocol QuoteProviderDelegate {
    func updateQuotes(quotes: [Quote])
}

class QuoteProvider {
    
    let names = ["Bitcoin", "Ethereum", "XRP"]
    let imageNames = ["btc", "xrp", "eth"]
    let symbols = ["BTC", "XRP", "ETH"]

    private let delegate: QuoteProviderDelegate
     
    required init(delegate: QuoteProviderDelegate) {
        self.delegate = delegate
    }
    func loadQuotes() {
        let quote = generateQuotes()
        delegate.updateQuotes(quotes: quote)
    }
    
    func generateQuotes() -> [Quote] {
        return names.enumerated().map { index, item in Quote (
            symbol: symbols[index],
            name: item,
            price: Double.random(in: 1 ... 10000),
            masupply: 17.9,
            imageName: imageNames[index]
            )}
    }
}
