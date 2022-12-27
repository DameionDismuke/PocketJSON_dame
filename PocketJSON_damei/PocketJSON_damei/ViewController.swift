//
//  ViewController.swift
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

import UIKit

class ViewController: UIViewController {

    
    var monster: Monster?
    var dragonTyping: DragonTyping?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()// Parsing it up now.
        
    }
    
      
    
    
    // JSON RIGHT HERE!!!!!
    
    func parseJSON(){
        guard let path1 = Bundle.main.path(forResource: "SampleJSONGlaceon", ofType: "json")
        else {
            return
        }
        
        guard let path2 = Bundle.main.path(forResource: "SampleJSONDragon", ofType: "json")
        else {
            return
        }
        
        let url1 = URL(fileURLWithPath: path1)
        let url2 = URL(fileURLWithPath: path2)
        
        
        do {
            let jsonData1 = try Data(contentsOf: url1)
            let jsonData2 = try Data(contentsOf: url2)
            monster = try JSONDecoder().decode(Monster.self, from: jsonData1)
            dragonTyping = try JSONDecoder().decode(DragonTyping.self, from: jsonData2)

        }
        catch {
            print("........")
            Swift.print("Error \(error)")
        }
        
        //print(monster is Monster)
        
        print("The most nested key, which is three layers deep, and a multiple way tied with other third level nests is \(monster!.gameIndices![1].version.name)!")
        
        
        //printing Dragon Typing JSON
        print("This is the Dragon Typing JSON. The most nested key, which is three layers deep, and a multiple way tied with other third level nests is my brother's favorite ghost: \(dragonTyping!.pokemon![18].pokemonNext)!")
        
        /*for x in monster!.gameIndices
        {
            print(x.version)
            
        }
        */
    }
    
    
    // where the output is printed, which should be the most nested key
    

}

