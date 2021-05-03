//
//  MainViewController.swift
//  quotes-mvc
//
//  Created by Бейбарыс Шагай on 11/11/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, QuoteProviderDelegate {

    private var quotes = [Quote]()

    
    
    var baseQuote: Quote? // типын көрсетім baseQuote degen svoistva bar Quote type
    var myQuotes: [Quote]?
    let amount: Double = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let qP = QuoteProvider(delegate: self)
        myQuotes =  qP.generateQuotes()
        for quote in myQuotes ?? [] {
            print("Казир бизде - \(quote.name)")
            if quote.name == "BTC" {
                print("\(quote.name) - BTC тен!!!")
                self.baseQuote = quote
            } else {
                print("\(quote.name) - BTC тен емес")
            }
        }
        // Do any additional setup after loading the view.
        
    }
    func updateQuotes(quotes: [Quote]) {
        self.quotes = quotes
    }
    
    
}
