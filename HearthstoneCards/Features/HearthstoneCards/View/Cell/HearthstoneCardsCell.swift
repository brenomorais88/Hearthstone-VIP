//
//  HearthstoneCardsCell.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import UIKit

class HearthstoneCardsCell: UICollectionViewCell {
    static let cellID = "HearthstoneCardsCell"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor.blue
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialSetup()
    }
    
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
    
    private func initialSetup() {
        self.contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        self.viewCodeSetup()
    }
    
    func setup(card: CardsResponse) {
        self.nameLabel.text = card.name
    }
}

extension HearthstoneCardsCell: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(nameLabel)
    }
    
    func viewCodeConstraintSetup() {
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.bottom.top.right.left.equalToSuperview().inset(16)
        }
    }
}

