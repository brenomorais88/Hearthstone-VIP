//
//  HearthstoneCardsWorker.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

protocol HearthstoneCardsWorkerLogic {
    func loadCards(callback: @escaping (Bool, [CardsResponse]?) -> ())
}

final class HearthstoneCardsWorker {
    private let service: HearthstoneCardsServiceProtocol

    init(service: HearthstoneCardsServiceProtocol) {
        self.service = service
    }

    enum HearthstoneCardsWorkerError: Error {
        case authFailed(String)
        case unauthorized
    }
}

extension HearthstoneCardsWorker: HearthstoneCardsWorkerLogic {
    func loadCards(callback: @escaping (Bool, [CardsResponse]?) -> ()) {
        let params = CardsParams(page: 0, delay: 0)
        self.service.loadCards(params: params, callback: callback)
    }
}
