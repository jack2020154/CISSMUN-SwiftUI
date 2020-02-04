//
//  Declarations.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-01.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

//  Most non-view structs are declared here, as well as arrays

import SwiftUI

extension UIDevice {
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}

struct Day: Codable, Identifiable, Hashable {
    var id: Int
    var date: String
    var items: [Event]
}

struct Event: Codable, Identifiable, Hashable {
    var id: Int
    var name: String
    var location: String
    var time: String
}

struct Attraction: Identifiable, Hashable {
    var id: Int
    var name: String
    var image: String
    var description: String
    var locationlat: Double
    var locationlong: Double
    var addressEN: String
    var addressCN: String
}

struct Restaurant: Identifiable, Hashable {
    var id: Int
    var name: String
    var image: String
    var style: String
    var price: String
    var location: String
    var locationlat: Double
    var locationlong: Double
    var addressEN: String
    var addressCN: String
}

struct Committee: Identifiable, Hashable {
    var id: Int
    var name: String
    var floor: String
    
    init(_ id: Int, _ name: String, _ floor: String) {
        self.id = id
        self.name = name
        self.floor = floor
    }
}

struct Floor: Hashable{
    var id: Int
    var image: String
    var description: String
    
    init(_ id: Int, _ image: String, _ description: String) {
        self.description = description
        self.image = image
        self.id = id
    }
    
}

struct CompoundFloor {
    var committee: Committee
    var floor: Floor
}

let committees: [Committee] = [
    Committee(1, "GA 1", "HS B1"),
    Committee(2, "GA 3", "PC 1"),
    Committee(3, "GA 4", "MS 1"),
    Committee(4, "GA 6", "HS 3"),
    Committee(5, "ECOSOC", "HS 1"),
    Committee(6, "HRC", "ES 3"),
    Committee(7, "Environment", "PC 1"),
    Committee(8, "Disarmament", "ES 1"),
    Committee(9, "UNCSW", "HS 4"),
    Committee(10, "SCSHT", "HS 2"),
    Committee(11, "UNPBC", "HS 4"),
    Committee(12, "CCPCJ", "HS 1"),
    Committee(13, "UNHCR", "PC 2"),
    Committee(14, "UCoST", "HS 2"),
    Committee(15, "WHA", "HS 2"),
    Committee(16, "UNPFII", "HS 5"),
    Committee(17, "COPUS", "HS 5"),
    Committee(18, "Security Council", "R 3"),
    Committee(19, "ICC Trial", "PC 2"),
    Committee(20, "ICC Prosecution", "HS 3"),
    Committee(21, "ICC Defense", "HS 3"),
    Committee(22, "Hive", "HS 3"),
    Committee(23, "Approval Panel", "PC 2"),
    Committee(24, "Printing", "HS 1"),
    Committee(16, "SMS/Vigil", "HS 3"),
]

let floorMaps: [Floor] = [
    Floor(1, "ES 1", "1st Floor of the Lower Building"),
    Floor(2, "ES 2", "2nd Floor of the Lower Building"),
    Floor(3, "ES 3", "3rd Floor of the Lower Building"),
    Floor(4, "ES 4", "4th Floor of the Lower Building"),
    Floor(5, "MS 1", "1st Floor of the Intermediate Building"),
    Floor(6, "MS 2", "2nd Floor of the Intermediate Building"),
    Floor(7, "HS B1", "Basement of the Upper Building"),
    Floor(8, "HS 1", "1st Floor of the Upper Building"),
    Floor(9, "HS 2", "2nd Floor of the Upper Building"),
    Floor(10, "HS 3", "3rd Floor of the Upper Building"),
    Floor(11, "HS 4", "4th Floor of the Upper Building"),
    Floor(12, "HS 5", "5th Floor of the Upper Building"),
    Floor(13, "HS 6", "6th Floor of the Upper Building"),
    Floor(14, "R 1", "1st Floor of the Rittmann"),
    Floor(15, "R 2", "2nd Floor of the Rittmann"),
    Floor(16, "R 3", "3rd Floor of the Rittmann"),
    Floor(17, "R 4", "4th Floor of the Rittmann"),
    Floor(18, "PC 1", "1st Floor of the Phoenix Centre"),
    Floor(19, "PC 2", "2nd Floor of the Phoenix Centre")
]

let jqRestaurants : [Restaurant] = [
    Restaurant(id: 1, name: "Yang's Fried Dumplings", image: "yangs", style: "Taiwanese, Fast Food", price: "$", location: "Carrefour", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 2, name: "Yi Dian Dian (Bubble Tea)", image: "yidiandian", style: "Taiwanese, Bubble Tea and Drinks", price: "$", location: "Carrefour", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 3, name: "New York Style Pizza", image: "nypizza", style: "American, Pizza", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 4, name: "Chi-Chi Sushi", image: "chichi", style: "Japanese, Sushi", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 5, name: "Pistolera", image: "pistolera", style: "Mexican", price: "$$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 6, name: "Blue Frog", image: "bluefrog", style: "American", price: "$$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 7, name: "Starbucks", image: "starbuck", style: "Cafe", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "")
]

let shRestaurants : [Restaurant] = [
    Restaurant(id: 1, name: "Taco Bell", image: "taco bell", style: "Mexican, Fast Food", price: "$", location: "Lujiazui", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 2, name: "Taoyuan Village", image: "taoyuan village", style: "Asian", price: "$", location: "Jing'an", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 3, name: "BiQiYa Korean", image: "biqiya", style: "Korean", price: "$", location: "Yangpu", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 4, name: "Urban Soup Kitchen", image: "urban soup", style: "European, Soups", price: "$", location: "Century Park", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 5, name: "Pizza Express", image: "pizza express", style: "Italian, Pizza", price: "$$-$$$", location: "Lujiazui", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 6, name: "Din Tai Fung", image: "dintaifung", style: "Chinese", price: "$$-$$$", location: "Lujiazui", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 7, name: "Lost Haven", image: "lost heaven", style: "Chinese", price: "$$-$$$", location: "Former French Concession", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 8, name: "Ginger Modern Asian Bistro", image: "ginger", style: "Asian, International", price: "$$-$$$", location: "Former French Concession", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 9, name: "Haidilao Hot Pot", image: "haidilao", style: "Chinese", price: "$$-$$$", location: "Dapuqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "")
]

let conference: [Day] = [
    Day(id: 1, date: "Friday, January 17", items: day1),
    Day(id: 2, date: "Saturday, January 18", items: day2),
    Day(id: 3, date: "Sunday, January 19", items: day3)

]

let day1: [Event] = [
    Event(id: 1, name: "Student Officer Workshop", location: "Wittenberg Hall (H316, H317, H318)", time: "8:30 AM - 11:00 AM"),
    Event(id: 2, name: "ICC in Session", location: "H306, H233, H329", time: "8:30 AM - 11:00 AM"),
    Event(id: 3, name: "CISSMUN Vigil in Session", location: "H305, H306", time: "8:30 AM - 11:00 AM"),
    Event(id: 4, name: "Registration", location: "PC Gym (P106)", time: "10:00 AM - 11:00 AM"),
    Event(id: 5, name: "Opening Ceremony", location: "PC Gym (P106)", time: "11:15 AM - 11:45 AM"),
    Event(id: 6, name: "Directors' Meeting", location: "PC Gym (P106)", time: "11:45 AM - 12:15 AM"),
    Event(id: 7, name: "Lunch Available", location: "PC Commons", time: "11:45 AM - 12:55 AM"),
    Event(id: 8, name: "Announcements/Opening Speeches", location: "All Committees in Session", time: "11:45 AM - 2:00 PM"),
    Event(id: 9, name: "Lobbying and Merging", location: "All Committees in Session", time: "2:00 PM - 6:00 PM"),
    Event(id: 10, name: "Approval Panel Open", location: "Phoenix Library", time: "2:00 PM - 6:00 PM"),
    Event(id: 11, name: "Dinner", location: "PC Commons", time: "6:00 PM - 7:00 PM"),
    Event(id: 12, name: "Adjounrment", location: "", time: "7:15 PM")
]

let day2: [Event] = [
    Event(id: 1, name: "Roll Call/Approval Panel Open", location: "All Committees in Session", time: "8:30 AM"),
    Event(id: 2, name: "Keynote Speaker - Mariatu Kamara", location: "PC Gym", time: "8:50 AM - 10:00 AM"),
    Event(id: 3, name: "Shanghai Tours Available For Directors", location: "PC Commons", time: "9:00 AM - 1:00 PM"),
    Event(id: 4, name: "Morning break/Approval Panel Open", location: "PC Commons", time: "10:00 AM - 10:30 AM"),
    Event(id: 5, name: "Formal Debate", location: "All Committees in Session", time: "10:30 AM - 4:30 PM"),
    Event(id: 6, name: "Lunch Available", location: "PC Commons", time: "11:45 AM - 1:30 PM"),
    Event(id: 7, name: "Adjournment", location: "", time: "4:30 PM")
]

let day3: [Event] = [
    Event(id: 1, name: "Roll Call", location: "All Committees in Session", time: "8:30 AM"),
    Event(id: 2, name: "Formal Debate", location: "All Committees in Session", time: "9:00 AM - 10:00 AM"),
    Event(id: 3, name: "Shanghai Tours Available for Directors", location: "PC Commons", time: "9:00 AM - 1:00 PM"),
    Event(id: 4, name: "Morning Break", location: "PC Commons", time: "10:00 AM - 10:30 AM"),
    Event(id: 5, name: "Formal Debate", location: "All Committees in Session", time: "10:30 AM - 3:30 PM"),
    Event(id: 6, name: "Lunch Available", location: "PC Commons", time: "11:45 AM - 1:30 PM"),
    Event(id: 7, name: "Directors Meeting", location: "TBD", time: "2:00 PM - 2:30 PM"),
    Event(id: 8, name: "Closing Ceremony", location: "PC Gym (P106)", time: "3:30 PM - 4:30 PM"),
    Event(id: 9, name: "Adjournment", location: "", time: "4:45 PM")
]
