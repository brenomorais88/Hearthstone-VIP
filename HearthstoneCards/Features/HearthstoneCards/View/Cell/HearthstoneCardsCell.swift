//
//  HearthstoneCardsCell.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import UIKit

class HearthstoneCardsCell: UICollectionViewCell {
    static let cellID = "HearthstoneCardsCell"
    
    private let cardView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let cardImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor.black
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
    
    override func prepareForReuse() {
        self.nameLabel.text = ""
        self.cardImage.image = UIImage(named: "avatar")
    }
    
    func setup(card: CardsResponse) {
        self.nameLabel.text = card.name
        self.cardImage.imageFromURL(urlString: card.img ?? "")
    }
}

extension HearthstoneCardsCell: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(cardView)
        self.cardView.addSubview(cardImage)
        self.cardView.addSubview(nameLabel)
    }
    
    func viewCodeConstraintSetup() {
        cardView.snp.makeConstraints { (make) -> Void in
            make.bottom.top.right.left.equalToSuperview()
        }
        
        cardImage.snp.makeConstraints { (make) -> Void in
            make.top.right.left.equalToSuperview().inset(10)
            make.height.equalTo(120)
        }
        
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(cardImage.snp.bottom).inset(10)
            make.bottom.right.left.equalToSuperview().inset(10)
        }
    }
    
    func viewCodeAdditioalSetup() {
        self.cardView.clipsToBounds = true
        self.cardView.layer.cornerRadius = 5
        self.cardView.layer.borderColor = UIColor.lightGray.cgColor
        self.cardView.layer.borderWidth = 1
        self.cardView.backgroundColor = .white
    }
}

