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
    func showCards()
}

protocol HearthstoneCardsViewControllerOutput: AnyObject {
    func showDetail()
}


class HearthstoneCardsViewController: UIViewController {
    var interactor: HearthstoneCardsInteractorInput?
    var router: HearthstoneCardsRouterLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HearthstoneCardsViewController: HearthstoneCardsViewControllerInput {
    func showError() {
        
    }
    
    func showLoading() {
        
    }
    
    func showCards() {
        
    }
}
