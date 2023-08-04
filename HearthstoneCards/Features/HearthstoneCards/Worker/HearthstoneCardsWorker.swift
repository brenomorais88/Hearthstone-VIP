//
//  HearthstoneCardsWorker.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

protocol HearthstoneCardsWorkerLogic {
    func loadCards()
}

final class HearthstoneCardsWorker {
    private let service: HearthstoneCardsServiceProtocol
//    private var bag = Set<AnyCancellable>()

    init(service: HearthstoneCardsServiceProtocol) {
        self.service = service
    }

    enum HearthstoneCardsWorkerError: Error {
        case authFailed(String)
        case unauthorized
    }
}

extension HearthstoneCardsWorker: HearthstoneCardsWorkerLogic {
    func loadCards() {
        
    }
}
