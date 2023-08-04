//
//  HearthstoneCardsView.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit
import SnapKit

class HearthstoneCardsView: UIView {
    private let cardsTable: UICollectionView = {
        let view = UICollectionView(frame: CGRect.zero,
                                    collectionViewLayout: UICollectionViewFlowLayout())
        let layout = UICollectionViewFlowLayout()
        view.setCollectionViewLayout(layout, animated: true)
        return view
    }()
    
    private let cards: [CardsResponse]
    
    init(cards: [CardsResponse]) {
        self.cards = cards
        super.init(frame: CGRect.zero)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = UIColor.blue
        self.viewCodeSetup()
    }
}

extension HearthstoneCardsView: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(cardsTable)
    }
    
    func viewCodeConstraintSetup() {
        cardsTable.snp.makeConstraints { (make) -> Void in
            make.top.bottom.right.left.equalToSuperview()
        }
    }
    
    func viewCodeAdditioalSetup() {
        self.cardsTable.delegate = self
        self.cardsTable.dataSource = self
        self.cardsTable.register(HearthstoneCardsCell.self, forCellWithReuseIdentifier: HearthstoneCardsCell.cellID)
        self.cardsTable.reloadData()
    }
}

extension HearthstoneCardsView: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.cards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let card = self.cards[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HearthstoneCardsCell.cellID,
                                                      for: indexPath) as? HearthstoneCardsCell {
            cell.setup(card: card)
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
}

