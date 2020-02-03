//
//  Declarations.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-01.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

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

let jqRestaurants : [Restaurant] = [
    Restaurant(id: 1, name: "Yang's Fried Dumplings", image: "yangs", style: "Taiwanese, Fast Food", price: "$", location: "Carrefour", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 2, name: "Yi Dian Dian (Bubble Tea)", image: "yidiandian", style: "Taiwanese, Bubble Tea and Drinks", price: "$", location: "Carrefour", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 3, name: "New York Style Pizza", image: "nypizza", style: "American, Pizza", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 4, name: "Chi-Chi Sushi", image: "chichi", style: "Japanese, Sushi", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 5, name: "Pistolera", image: "pistolera", style: "Mexican", price: "$$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 6, name: "Blue Frog", image: "bluefrog", style: "American", price: "$$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Restaurant(id: 7, name: "Starbucks", image: "starbuck", style: "Cafe", price: "$$", location: "Jinqiao", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "")
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
