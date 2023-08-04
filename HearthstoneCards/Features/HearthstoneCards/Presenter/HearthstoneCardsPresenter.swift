//
//  HearthstoneCardsPresenter.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

typealias HearthstoneCardsPresenterOutput = HearthstoneCardsViewControllerInput

protocol HearthstoneCardsPresenterProtocol {
    func showCards(cards: [CardsResponse])
    func showLoaging()
    func showError()
}

final class HearthstoneCardsPresenter {
    weak var viewController: HearthstoneCardsPresenterOutput?
}

extension HearthstoneCardsPresenter: HearthstoneCardsPresenterProtocol {
    func showCards(cards: [CardsResponse]) {
        viewController?.showCards(cards: cards)
    }
    
    func showLoaging() {
        viewController?.showLoading()
    }
    
    func showError() {
        viewController?.showError()
    }
}
