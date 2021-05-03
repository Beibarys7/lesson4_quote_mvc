//
//  QuoteDetailViewController.swift
//  quotes-mvc
//
//  Created by Бейбарыс Шагай on 11/13/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class QuoteDetailViewController: UIViewController {

    @IBOutlet weak var openLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var closeLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
 
    
    var quote: Quote?
    
    override func viewDidLoad() {
            super.viewDidLoad()

        print(quote)

        if let quote = quote {
            openLabel.text = quote.masupply.description
            highLabel.text = quote.masupply.description
            averageLabel.text = quote.masupply.description
            closeLabel.text = quote.masupply.description
            lowLabel.text = quote.masupply.description
            changeLabel.text = quote.masupply.description
            
        }
    }
}
