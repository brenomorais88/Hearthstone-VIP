//
//  CardsResponse.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation

struct CardsResponse: Codable {
    let name: String?
    let img: String?
    let flavor: String?
    let desc: String?
    let setPertence: String?
    let tipo: String?
    let faccao: String?
    let raridade: String?
    let ataque: Int?
    let custo: Int?
    let health: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case img = "img"
        case flavor = "flavor"
        case desc = "text"
        case setPertence = "cardSet"
        case tipo = "type"
        case faccao = "faction"
        case raridade = "rarity"
        case ataque = "attack"
        case custo = "cost"
        case health = "health"
    }
}
