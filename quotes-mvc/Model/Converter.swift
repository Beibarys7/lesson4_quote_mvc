//
//  Converter.swift
//  quotes-mvc
//
//  Created by Бейбарыс Шагай on 11/10/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation

class Converter {
    
    var baseQuote: Quote
    
    init(baseQuote:Quote) {
        self.baseQuote = baseQuote
    }
    
    func converterQuote(amount: Double, ConvertQuote: Quote) -> Double {
        
        return amount * ConvertQuote.price / baseQuote.price
    }
}
