//
//  HearthstoneCardDertailViewController.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit

class HearthstoneCardDertailViewController: UIViewController {
    let card: CardsResponse
    
    init(card: CardsResponse) {
        self.card = card
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCardView()
    }

    func loadCardView() {
        let cardsView = HearthstoneCardDetailView(card: self.card)
        self.view = cardsView
    }
}

