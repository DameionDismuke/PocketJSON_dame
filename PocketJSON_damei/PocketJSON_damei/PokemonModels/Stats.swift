//
//  Stats.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/22/22.
//

import Foundation


//-------------Stats.swift---------------
struct Stats: Decodable {
    let baseStat: Int
    let effort: Int
    let stat: Stat
    
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
