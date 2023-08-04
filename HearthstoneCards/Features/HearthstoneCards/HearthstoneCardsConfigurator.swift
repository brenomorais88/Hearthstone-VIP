//
//  HearthstoneCardsConfigurator.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

protocol HearthstoneCardsConfigurator {
    func configured(_ vc: HearthstoneCardsViewController) -> HearthstoneCardsViewController
}

final class DefaultHearthstoneCardsConfigurator: HearthstoneCardsConfigurator {
    private var sceneFactory: HearthstoneCardsFactory
    
    init(sceneFactory: HearthstoneCardsFactory) {
        self.sceneFactory = sceneFactory
    }
    
    @discardableResult
    func configured(_ vc: HearthstoneCardsViewController) -> HearthstoneCardsViewController {
        sceneFactory.configurator = self
        let service = HearthstoneCardsService()
        let worker = HearthstoneCardsWorker(service: service)
        let interactor = HearthstoneCardsInteractor()
        let presenter = HearthstoneCardsPresenter()
        let router = HearthstoneCardsRouter(sceneFactory: sceneFactory)
        router.source = vc
        presenter.viewController = vc
        interactor.presenter = presenter
        interactor.worker = worker
        vc.interactor = interactor
        vc.router = router
        return vc
    }
}
