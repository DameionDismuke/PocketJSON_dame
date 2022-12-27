//
//  typing_model.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/21/22.
//  HW: Try to consume the above given JSON files,
//  create separate files for models and
//  parse the response from local file.
//  As an output if you could just print out the most nested key that would be fine.
//  No need to bother about UI.
//
//  HW: using CodingKeys try to get/parse the most nested key at the same level of root model
//

import Foundation


struct DragonTyping: Decodable {
    
    let id: Int?
    let name: String?
    let pokemon: [Pokemon]?
    let typingMoves: [TypingMoves]?
    let damageRelations: DamageRelations?
    let gameIndices: [GameIndices]?
    let generation: Generation?
    let moveDamageClass: MoveDamageClass?
    
    
    enum Codingkeys : String, CodingKey {
        
        case id
        case name
        case pokemon = "pokemon"
        case typingMoves = "moves"
        case damageRelations = "damage_relations"
        case typingGameIndices = "game_indices"
        case generation
        case moveDamageClass = "move_damage_class"
        
    }
    
    
}

struct DamageRelations: Decodable {
    
    let doubleDamageFrom: [String]?
    let doubleDamageTo: [String]?
    let halfDamageFrom: [String]?
    let halfDamageTo: [String]?
    let noDamageFrom: [String]?
    let noDamageTo: [String]?
    
    
    enum CodingKeys : String, CodingKey {
        
        case doubleDamageFrom = "double_damage_from"
        case doubleDamageTo = "double_damage_to"
        case halfDamageFrom = "half_damage_from"
        case halfDamageTo = "half_damage_to"
        case noDamageFrom = "no_damage_from"
        case noDamageTo = "no_damage_to"

    }
    
}

struct TypingGameIndices: Decodable {
    
    let gameIndex: Int?
    let generation: [String]?
    
    
    enum Codingkeys: String, CodingKey {
        case gameIndex = "game_index"
        case generation
    }
}

struct MoveDamageClass: Decodable {
    
    let name: String?
    let url: String?
}

struct Generation: Decodable {
    
    let name: String?
    let url: String?
}

struct TypingMoves: Decodable {
    
    let name: String?
    let url: String?
}

struct Pokemon: Decodable {
    
    let slot: Int?
    let pokemonNext: [String:String?]
    
    enum CodingKeys : String, CodingKey {
        case slot
        case pokemonNext = "pokemon"
    }
    
}

struct PokemonNext: Decodable {
    
    let name: String?
    let url: String?
}



