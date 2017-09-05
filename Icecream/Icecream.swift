//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream:[String:String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom":  "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor:String) -> [String] {
        var namess:[String] = []
        
        for (name,flavore) in favoriteFlavorsOfIceCream {
            if flavor == flavore {
                namess.append(name)
            }
        }
        return namess
    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor:String) ->Int{
        var cx:Int = 0
        for (_,flavore) in favoriteFlavorsOfIceCream {
            if forFlavor == flavore {
                cx += 1
            }
        }
        return cx
    }
    
    
    
    
    
    // 4.
    
    
    func flavor(forPerson:String)->String?{
        return favoriteFlavorsOfIceCream[forPerson]
     
    }
    
    
    
    
    // 5.
   
    func replace (flavor:String, forPerson:String)->Bool{
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        } else {
            return false;
        }
        
    }
    
    
    
    
    
    // 6.
    
    
    
    func remove(person:String)->Bool{
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false;
        }
    }
    
    
    
    
    // 7.
    
    func numberOfAttendees()->Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    // 8.
    
    
    func add(person:String, withFlavor:String )->Bool{
        if favoriteFlavorsOfIceCream[person] != nil {
            return false;
        } else {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true;
        }
        
    }

    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var st:String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for item in allNames{
           st += "\(item) likes \(favoriteFlavorsOfIceCream[item]!)\n"
            
        }
        
        return String(st.characters.dropLast())
    }
    
    
    
    
    
    

}
