//
//  Games.swift
//  GameList
//


import Foundation
import SwiftUI
import CoreLocation

struct Games:Identifiable{
    var id=UUID()
    var name:String
    var imageName:String
    var description:String
    var developer:String
    var genre:String
    
    
    var coordinateOfProducer:Coordinate
    
    var coordinateLocation:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinateOfProducer.latitude, longitude: coordinateOfProducer.longitude)
    }
}

struct Coordinate{
    var latitude:Double
    var longitude:Double
}


let rainbow6siege=Games(name: "Rainbow Six Siege", imageName: "rainbow6siege", description: "Description: It has PVP and PVE mode. There are many operators that have special gadgets and weapons. There are some game modes and one of them is Ranked. You can play with your friends its a 5 vs 5. ", developer: "Ubisoft",genre: "Genre: First-Person Shooter"  ,coordinateOfProducer: Coordinate(latitude: 45.525822455594266, longitude: -73.59834354889261))

let fallout76=Games(name: "Fallout 76", imageName: "fallout76", description: "Description: PVE and PVP. It has a level system. There is two modes. One is BattleeRoyale the other is freeplay in the map. ", developer: "Bethesda Softworks",genre: "Genre: Role-play Game " ,coordinateOfProducer: Coordinate(latitude: 39.1053094996766, longitude: -77.18074338273718))

let huntshowdown=Games(name: "Hunt Showdown", imageName: "huntshowdown", description: "Description: It is PVE and PVP. You can team up to 3 person. Also you can play solo or 2 player team. It has a Wild West theme.", developer: "Crytek",genre: "Genre: First-Person Shooter" ,coordinateOfProducer: Coordinate(latitude: 50.12609349277568, longitude: 8.750619623203352))

let rdr2=Games(name: "Red Dead Redemption 2", imageName: "rdr2", description: "Description: It is PVE and PVP. Has lots of modes. You can play in map freely. Team up with your friends and accomplish tasks.", developer: "Rockstar Games",genre: "Genre: Role-play Game" ,coordinateOfProducer: Coordinate(latitude: 40.726221607970466, longitude: -73.99570469302212))

let gameList=[rainbow6siege,fallout76,huntshowdown,rdr2]
