//
//  HearthstoneCardsRouter.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit

protocol HearthstoneCardsRouterLogic {
    func showCardDetail(card: CardsResponse)
}

final class HearthstoneCardsRouter {
    weak var source: UIViewController?
    private let sceneFactory: HearthstoneCardsFactory
    
    init(sceneFactory: HearthstoneCardsFactory) {
        self.sceneFactory = sceneFactory
    }
}

extension HearthstoneCardsRouter: HearthstoneCardsRouterLogic {
    func showCardDetail(card: CardsResponse) {
        let vc = HearthstoneCardDertailViewController(card: card)
        self.source?.present(vc, animated: true)
    }
}
