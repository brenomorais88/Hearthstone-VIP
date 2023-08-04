//
//  HearthstoneCardsInteractor.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

protocol HearthstoneCardsInteractorProtocol: AnyObject {
    func loadCards()
}

class HearthstoneCardsInteractor {
    var presenter: HearthstoneCardsPresenterProtocol?
    var worker: HearthstoneCardsWorker?
}

extension HearthstoneCardsInteractor: HearthstoneCardsInteractorProtocol {
    func loadCards() {
        self.presenter?.showLoaging()
        worker?.loadCards(callback: { success, response in
            if success {
                guard let cards = response else {
                    self.presenter?.showError()
                    return
                }
                
                self.presenter?.showCards(cards: cards)
            } else {
                self.presenter?.showError()
            }
        })
    }
}
