//
//  HearthstoneCardsViewController.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import UIKit

protocol HearthstoneCardsViewControllerInput: AnyObject {
    func showError()
    func showLoading()
    func showCards(cards: [CardsResponse])
}

protocol HearthstoneCardsViewControllerOutput: AnyObject {
    func showDetail()
}


class HearthstoneCardsViewController: UIViewController {
    var interactor: HearthstoneCardsInteractorProtocol?
    var router: HearthstoneCardsRouterLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        interactor?.loadCards()
    }
}

extension HearthstoneCardsViewController: HearthstoneCardsViewControllerInput {
    func showError() {
        let errorView = HearthstoneCardsErrorView(error: "no items found")
        errorView.delegate = self
        self.view = errorView
    }
    
    func showLoading() {
        let loadingView = HearthstoneCardsLoadingView()
        self.view = loadingView
    }
    
    func showCards(cards: [CardsResponse]) {
        let cardsView = HearthstoneCardsView(cards: cards)
        self.view = cardsView
    }
}

extension HearthstoneCardsViewController: HearthstoneCardsErrorViewDelegate {
    func tryAgain() {
        self.interactor?.loadCards()
    }
}
