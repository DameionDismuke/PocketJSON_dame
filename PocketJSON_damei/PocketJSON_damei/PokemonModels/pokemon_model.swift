//
//  pokemon_model.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/21/22.
//
//  HW: Try to consume the above given JSON files,
//  create separate files for models and
//  parse the response from local file.
//  As an output if you could just print out the most nested key that would be fine.
//  No need to bother about UI.
//
//  HW: using CodingKeys try to get/parse the most nested key at the same level of root model
//

import Foundation



struct Monster: Decodable {      //SamepleJSONGlaceon.json root
    let isDefault: Bool?
    let name: String?
    let locationAreaEncounters: String?
    let weight: Int?
    let height: Int?
    let order: Int?
    let id: Int?
    let baseExperience: Int?
    let abilities: [Abilities]?
    let moves: [Moves]?
    let types: [Types]?
    let forms: [Forms]?
    let species: Species?
    let stats: [Stats]?
    let sprites: Sprites?
    let gameIndices: [GameIndices]?

    
    // map 'base_experience' from JSON to 'baseExperience' of Pokemon and the other names with underscores
    // 'name' and 'weight' are left alone as JSON already have them and all the other non-underscore variables
    enum CodingKeys : String, CodingKey {
        case name
        case locationAreaEncounters = "location_area_encounters"
        case weight
        case height
        case order
        case id
        case baseExperience = "base_experience"
        case abilities
        case moves
        case types
        case forms
        case species
        case stats
        case sprites
        case gameIndices = "game_indices"
        case isDefault = "is_default"
      }
}


//All the nested arrays under this line will be structs-----------------------------------

/*/------Abilities.swift---------------
struct Abilities: Decodable {
    let ability: [Ability]
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
//------------------Abilities--------*/
/*/-------------Species.swift---------------

struct Species: Decodable {
    let name: String
    let url: String
}


//------------------Species--------
//-------------Sprites.swift---------------
struct Sprites: Decodable {
    let backDefault: String
    let backFemale: String
    let backShiny: String
    let backShinyFemale: String
    let frontDefault: String
    let frontFemale: String
    let frontShiny: String
    let frontShinyFemale: String
    
    enum CodingKeys : String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
    
}
//------------------Sprites--------
//-------------Stats.swift---------------
struct Stats: Decodable {
    let baseStat: Int
    let effort: Int
    let stat: [Stat]
    
    enum CodingKeys : String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
}
struct Stat: Decodable {  //struct for stat of Stats
    let name: String
    let url: String
}

//------------------Stats--------
//-------------Types.swift---------------
struct Types: Decodable {
    let slot: Int
    let type: [Type]
}
struct Type: Decodable {
    let name: String
    let url: String
}

//------------------Types--------
//-------------Moves.swift---------------
struct Moves: Decodable {
    let move: [Move]
}
struct Move: Decodable {
    let name: String
    let url: String
}
//------------------Moves--------
//-------------Forms.swift---------------
struct Forms: Decodable {
    let name: String
    let url: String
}

//------------------Forms--------*/
/*/-------------GameIndices.swift---------------
struct GameIndices: Decodable {
    let gameIndex: Int
    let version: [Version]
    
    enum  CodingKeys : String, CodingKey {
        case version
        case gameIndex = "game_index"
    }
}
struct Version: Decodable {
    let name: String
    let url: String
}
//------------------GameIndices--------*/

