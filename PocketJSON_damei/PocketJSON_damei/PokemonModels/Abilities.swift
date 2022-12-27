//
//  Abilities.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/22/22.
//

import Foundation





//------Abilities---------------
struct Abilities: Decodable {
    let ability: Ability
    let isHidden: Bool
    let slot: Int
    
    
    enum CodingKeys : String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
}
//struct for nested arrays of Abilities
struct Ability: Decodable {
    let name: String
    let url: String
}
//------------------Abilities--------
