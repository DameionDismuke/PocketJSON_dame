//
//  GameIndices.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/22/22.
//

import Foundation


//-------------GameIndices.swift---------------
struct GameIndices: Decodable {
    let gameIndex: Int
    let version: Version
    
    enum  CodingKeys : String, CodingKey {
        case version
        case gameIndex = "game_index"
    }
}
struct Version: Decodable {
    let name: String
    let url: String
}
//------------------GameIndices--------
