//
//  HearthstoneCardsService.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import Foundation
import Alamofire

protocol HearthstoneCardsServiceProtocol {
    func loadCards(params: CardsParams, callback: @escaping (Bool, [CardsResponse]?) -> ())
}

class HearthstoneCardsService: HearthstoneCardsServiceProtocol {
    let baseURL: String = "https://omgvamp-hearthstone-v1.p.rapidapi.com"
    let decoder = JSONDecoder()
    
    let headers: HTTPHeaders = [
        "X-RapidAPI-Key": "184dd775e0msh883736f99d441fep1878c5jsna085fde7c264",
        "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
    ]
    
    func loadCards(params: CardsParams, callback: @escaping (Bool, [CardsResponse]?) -> ()) {
//    https://omgvamp-hearthstone-v1.p.rapidapi.com
        AF.request("\(self.baseURL)/cards/sets/Classic?attack=3&collectible=1&locale=ptBR",
                   method: .get,
                   encoding: URLEncoding.httpBody,
                   headers: headers).response { response in

            switch response.result {
                case .success:
                do {
                    let parsedData = try self.decoder.decode([CardsResponse].self,
                                                             from: response.data ?? Data())
                    callback(true, parsedData)
                    
                } catch {
                    callback(false, nil)
                }

                case .failure:
                    callback(false, nil)
            }
        }
    }
}
