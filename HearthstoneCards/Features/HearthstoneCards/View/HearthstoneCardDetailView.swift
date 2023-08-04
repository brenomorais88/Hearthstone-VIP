//
//  HearthstoneCardDetailView.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit

class HearthstoneCardDetailView: UIView {
    private let card: CardsResponse
    
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
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    
    private let flavorTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let flavorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let descTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let descLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let setPercenceTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let setPercenceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let typeTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let factionTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let factionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let rarityTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let rarityLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let ataqueTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let ataqueLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let costTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let costLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    private let healthTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    private let healthLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    init(card: CardsResponse) {
        self.card = card
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

extension HearthstoneCardDetailView: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(cardImage)
        self.addSubview(nameLabel)
        self.addSubview(flavorTitleLabel)
        self.addSubview(flavorLabel)
        self.addSubview(descTitleLabel)
        self.addSubview(descLabel)
        self.addSubview(setPercenceTitleLabel)
        self.addSubview(setPercenceLabel)
        self.addSubview(typeTitleLabel)
        self.addSubview(typeLabel)
        self.addSubview(factionTitleLabel)
        self.addSubview(factionLabel)
        self.addSubview(rarityTitleLabel)
        self.addSubview(rarityLabel)
        self.addSubview(ataqueTitleLabel)
        self.addSubview(ataqueLabel)
        self.addSubview(costTitleLabel)
        self.addSubview(costLabel)
        self.addSubview(healthTitleLabel)
        self.addSubview(healthLabel)
    }
    
    func viewCodeConstraintSetup() {
        cardImage.snp.makeConstraints { (make) -> Void in
            make.top.right.left.equalToSuperview().inset(10)
            make.height.equalTo(200)
        }
        
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(cardImage.snp.bottom).inset(-40)
            make.right.left.equalToSuperview().inset(10)
        }
        
        flavorTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(nameLabel.snp.bottom).inset(-16)
            make.right.left.equalToSuperview().inset(10)
        }

        flavorLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(flavorTitleLabel.snp.bottom).inset(-8)
            make.right.left.equalToSuperview().inset(10)
        }
        
        descTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(flavorLabel.snp.bottom).inset(-16)
            make.right.left.equalToSuperview().inset(10)
        }

        descLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(descTitleLabel.snp.bottom).inset(-8)
            make.right.left.equalToSuperview().inset(10)
        }
        
        setPercenceTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(descLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        setPercenceLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(setPercenceTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        typeTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(setPercenceLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        typeLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(typeTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        factionTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(typeLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        factionLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(factionTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        rarityTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(factionLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        rarityLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(rarityTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        ataqueTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(rarityLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        ataqueLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(ataqueTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        costTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(ataqueLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
        }

        costLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(costTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
        
        healthTitleLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(costLabel.snp.bottom).inset(-20)
            make.left.equalToSuperview().inset(10)
            
        }

        healthLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(healthTitleLabel.snp.centerY)
            make.right.equalToSuperview().inset(10)
        }
    }
    
    func viewCodeAdditioalSetup() {
        self.backgroundColor = UIColor.white
        self.cardImage.imageFromURL(urlString: card.img ?? "")
        self.nameLabel.text = card.name
        self.flavorTitleLabel.text = "Flavor:"
        self.flavorLabel.text = card.flavor
        self.descTitleLabel.text = "Descrição:"
        self.descLabel.text = card.desc
        self.setPercenceTitleLabel.text = "Set:"
        self.setPercenceLabel.text = card.setPertence
        self.typeTitleLabel.text = "Tipo:"
        self.typeLabel.text = card.tipo
        self.factionTitleLabel.text = "Faccao:"
        self.factionLabel.text = card.faccao
        self.rarityTitleLabel.text = "Rariade:"
        self.rarityLabel.text = card.raridade
        
        
        if let atack = card.ataque {
            self.ataqueTitleLabel.text = "Ataque:"
            self.ataqueLabel.text = "\(atack)"
        }
        
        if let custo = card.custo {
            self.costTitleLabel.text = "Custo:"
            self.costLabel.text = "\(custo)"
        }
        
        if let health = card.health {
            self.healthTitleLabel.text = "Health:"
            self.healthLabel.text = "\(health)"
        }
    }
}
