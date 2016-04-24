//
//  Sport.swift
//  SportsApp
//
//  Created by Kawika Avilla on 4/23/16.
//  Copyright © 2016 jwirtz. All rights reserved.
//

import Foundation

class Sport {
    var name: String
    //TODO change to geolocation for google api
    var location: String
    //TODO change to NSDATE/NSTIME
    var time: String
    var gameType: String
    
    init(name: String, location: String, time: String, gameType:String) {
        self.name = name
        self.location = location
        self.time = time
        self.gameType = gameType
    }
    
    func getName() -> String {
        return name
    }
    
    func getLocation() -> String {
        return location
    }
    
    func getTime() -> String {
        return time
    }
    
    func getGameType() -> String {
        return gameType
    }
}