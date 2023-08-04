//
//  HearthstoneCardsInteractor.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

typealias HearthstoneCardsInteractorInput = HearthstoneCardsInteractorOutput

protocol HearthstoneCardsInteractorOutput: AnyObject {
    func showCards()
    func showLoaging()
    func showError()
}

class HearthstoneCardsInteractor {
    var presenter: HearthstoneCardsPresenter?
    var worker: HearthstoneCardsWorker?
}

extension HearthstoneCardsInteractor: HearthstoneCardsInteractorInput {
    func showCards() {
        
    }
    
    func showLoaging() {
        
    }
    
    func showError() {
        
    }
}
