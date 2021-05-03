//
//  QuoteViewController.swift
//  quotes-mvc
//
//  Created by Бейбарыс Шагай on 11/10/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class QuoteViewController: UITableViewController, QuoteProviderDelegate {

    private var quotes = [Quote]()
    private var quoteProvider: QuoteProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteProvider = QuoteProvider(delegate: self)
        quoteProvider!.loadQuotes()
        print(quotes)
    }
    
    func updateQuotes(quotes: [Quote]) {
        self.quotes = quotes
        tableView.reloadData()
       }
       
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath) as? QuoteCell {
            
            let index = indexPath.row
            let quote = quotes[index]
            
            cell.iconImageView.image = UIImage(named: quote.imageName)
            cell.nameLabel.text = quote.name
            cell.priceLabel.text = quote.price.description
            cell.symbolLabel.text = quote.symbol
            cell.supplyLabel.text = quote.masupply.description
            
        }
        
        return QuoteCell()
    }
        
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "quotesToDetail",
        let cell = sender as? QuoteCell,
        let indexPath = tableView.indexPath(for: cell),
        let detailVC = segue.destination as? QuoteDetailViewController {
        detailVC.quote = quotes[indexPath.row]
        }
    }
}
