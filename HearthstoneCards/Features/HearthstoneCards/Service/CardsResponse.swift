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
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case img = "img"
    }

//    Descrição "flavor"
//    Descrição curta
//    Set pertencente
//    Tipo
//    Facção
//    Raridade
//    Ataque
//    Custo
//    Health
}


//      "cardId":"EX1_319",
//      "dbfId":1090,
//      "cardSet":"Classic",
//      "type":"Minion",
//      "faction":"Neutral",
//      "rarity":"Common",
//      "cost":1,
//      "attack":3,
//      "health":2,
//      "text":"<b>Grito de Guerra:</b> Cause 3 de dano ao seu herói.",
//      "flavor":"Diabretes curtem ficar no fogo. Eles só curtem.",
//      "artist":"Alex Horley Orlandelli",
//      "collectible":true,
//      "race":"Demon",
//      "playerClass":"Warlock",
//      "locale":"ptBR",
