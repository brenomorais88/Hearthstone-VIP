//
//  CardsResponse.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

struct CardsResponse: Codable {
    let name: String?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}
