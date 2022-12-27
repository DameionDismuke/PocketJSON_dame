//
//  Types.swift
//  PocketJSON_damei
//
//  Created by Dameion Dismuke on 12/22/22.
//

import Foundation


//-------------Types.swift---------------
struct Types: Decodable {
    let slot: Int
    let type: Type
}
struct Type: Decodable {
    let name: String
    let url: String
}

//------------------Types--------
