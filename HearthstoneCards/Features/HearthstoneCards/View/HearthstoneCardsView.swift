//
//  HearthstoneCardsView.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit
import SnapKit

protocol HearthstoneCardsViewDelegate {
    func didSelectCard(card: CardsResponse)
}

class HearthstoneCardsView: UIView {
    private let cardsTable: UICollectionView = {
        let view = UICollectionView(frame: CGRect.zero,
                                    collectionViewLayout: UICollectionViewFlowLayout())
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.minimumLineSpacing = 16
        
        view.setCollectionViewLayout(layout, animated: true)
        view.backgroundColor = .clear
        return view
    }()
    
    private let delegate: HearthstoneCardsViewDelegate
    let cards: [CardsResponse]
    
    init(cards: [CardsResponse],
         delegate: HearthstoneCardsViewDelegate) {
        self.cards = cards
        self.delegate = delegate
        super.init(frame: CGRect.zero)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = UIColor.white
        self.viewCodeSetup()
    }
}

extension HearthstoneCardsView: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(cardsTable)
    }
    
    func viewCodeConstraintSetup() {
        cardsTable.snp.makeConstraints { (make) -> Void in
            make.top.bottom.equalToSuperview()
            make.right.left.equalToSuperview().inset(16)
        }
    }
    
    func viewCodeAdditioalSetup() {
        self.cardsTable.delegate = self
        self.cardsTable.dataSource = self
        self.cardsTable.register(HearthstoneCardsCell.self, forCellWithReuseIdentifier: HearthstoneCardsCell.cellID)
        self.cardsTable.reloadData()
    }
}

extension HearthstoneCardsView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (UIScreen.main.bounds.size.width - 48) / 2
        return CGSize(width: width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let card = self.cards[indexPath.row]
        self.delegate.didSelectCard(card: card)
    }
}

