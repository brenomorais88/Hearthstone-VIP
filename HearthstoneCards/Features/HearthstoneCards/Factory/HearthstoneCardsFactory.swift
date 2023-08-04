//
//  HearthstoneCardsFactory.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import UIKit

protocol HearthstoneCardsFactory {
    var configurator: HearthstoneCardsConfigurator! { get set }
    func makeLoginScene() -> UIViewController
}

final class DefaultSceneFactory: HearthstoneCardsFactory {
    var configurator: HearthstoneCardsConfigurator!
    
    func makeLoginScene() -> UIViewController {
        let vc = HearthstoneCardsViewController()
        return configurator.configured(vc)
    }
}
