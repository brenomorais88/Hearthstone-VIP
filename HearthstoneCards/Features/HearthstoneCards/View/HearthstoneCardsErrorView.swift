//
//  HearthstoneCardsErrorView.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import UIKit
import SnapKit

protocol HearthstoneCardsErrorViewDelegate {
    func tryAgain()
}

class HearthstoneCardsErrorView: UIView {
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let tryAgainButton: FirstButton = {
        let button = FirstButton(text: Strings.kTryAgain.rawValue)
        return button
    }()
    
    let error: String
    var delegate: HearthstoneCardsErrorViewDelegate? = nil
    
    init(error: String) {
        self.error = error
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
    
    @objc private func tryAgain() {
        self.delegate?.tryAgain()
    }
}

extension HearthstoneCardsErrorView: ViewCodeProtocol {
    func viewCodeHierarchySetup() {
        self.addSubview(messageLabel)
        self.addSubview(tryAgainButton)
    }
    
    func viewCodeConstraintSetup() {
        messageLabel.snp.makeConstraints { (make) -> Void in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
        }
        
        tryAgainButton.snp.makeConstraints { (make) -> Void in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(60)
        }
    }
    
    func viewCodeAdditioalSetup() {
        self.tryAgainButton.addTarget(self, action: #selector(tryAgain), for: .touchUpInside)
        self.messageLabel.text = self.error
    }
}

