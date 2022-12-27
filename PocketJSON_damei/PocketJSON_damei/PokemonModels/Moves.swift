//
//  Moves.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/22/22.
//

import Foundation



//-------------Moves.swift---------------
struct Moves: Decodable {
    let move: Move
}
struct Move: Decodable {
    let name: String
    let url: String
}
//------------------Moves--------
