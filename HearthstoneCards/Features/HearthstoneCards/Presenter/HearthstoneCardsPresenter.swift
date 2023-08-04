//
//  HearthstoneCardsPresenter.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

typealias HearthstoneCardsPresenterInput = HearthstoneCardsInteractorOutput
typealias HearthstoneCardsPresenterOutput = HearthstoneCardsViewControllerInput

final class HearthstoneCardsPresenter {
    weak var viewController: HearthstoneCardsPresenterOutput?
}

extension HearthstoneCardsPresenter: HearthstoneCardsPresenterInput {
    func showCards() {
        
    }
    
    func showLoaging() {
        
    }
    
    func showError() {
        
    }
}
