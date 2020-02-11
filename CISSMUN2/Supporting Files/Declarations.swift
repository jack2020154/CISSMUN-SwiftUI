//
//  Declarations.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-01.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

//  Most non-view structs are declared here, as well as arrays

import SwiftUI

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
    var addressmap: String
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
    var addressmap: String
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
    Restaurant(id: 1, name: "Yang's Fried Dumplings", image: "yangs", style: "Taiwanese, Fast Food", price: "$", location: "Carrefour", locationlat: 31.2394523, locationlong: 121.5811832, addressEN: "555 Biyun Road, Jinqiao", addressCN: "碧云路555号金桥购物中心F1楼，浦东新区", addressmap: "No.555, Biyun Road No. Jinqiao Shopping Center F F1, Pudong Shanghai China"),
    Restaurant(id: 2, name: "Yi Dian Dian (Bubble Tea)", image: "yidiandian", style: "Taiwanese, Bubble Tea and Drinks", price: "$", location: "Carrefour", locationlat: 31.2390129, locationlong: 121.5810528, addressEN: "555 Biyun Road, Jinqiao", addressCN: "碧云路555号金桥购物中心F1楼，浦东新区", addressmap: "No.555, Biyun Road No. Jinqiao Shopping Center F F1, Pudong Shanghai China"),
    Restaurant(id: 3, name: "New York Style Pizza", image: "nypizza", style: "American, Pizza", price: "$$", location: "Jinqiao", locationlat: 31.2420590, locationlong: 121.5917490, addressEN: "336 Hongfeng Road, Pudong", addressCN: "红枫路336号，浦东新区", addressmap: "No.336, Hongfeng Road, Pudong Shanghai China"),
    Restaurant(id: 4, name: "Chi-Chi Sushi", image: "chichi", style: "Japanese, Sushi", price: "$$", location: "Jinqiao", locationlat: 31.2401200, locationlong: 121.5824355, addressEN: "633 Biyun Road, Jinqiao", addressCN: "碧云路633号碧云体育休闲中心，浦东新区", addressmap: "No.633, Biyun Road No. Biyun Sports Leisure Center F1, Pudong Shanghai China"),
    Restaurant(id: 5, name: "Pistolera", image: "pistolera", style: "Mexican", price: "$$$", location: "Jinqiao", locationlat: 31.2415532, locationlong: 121.5865207, addressEN: "855 Biyun Road, Jinqiao", addressCN: "碧云路855号，浦东新区", addressmap: "No.855, Biyun Road (Jin Huangyang Road), Pudong Shanghai China"),
    Restaurant(id: 6, name: "Blue Frog", image: "bluefrog", style: "American", price: "$$$", location: "Jinqiao", locationlat: 31.2394251, locationlong: 121.5828985, addressEN: "633 Biyun Road, Jinqiao", addressCN: "碧云路633号碧云体育休闲中心，浦东新区", addressmap: "No.633, Biyun Road No. Biyun Sports Leisure Center F1, Pudong Shanghai China"),
    Restaurant(id: 7, name: "Starbucks", image: "starbuck", style: "Cafe", price: "$$", location: "Jinqiao", locationlat: 31.2395521, locationlong: 121.5830393, addressEN: "633 Biyun Road, Jinqiao", addressCN: "碧云路633号碧云体育休闲中心，浦东新区", addressmap: "No.633, Biyun Road No. Biyun International Community Biyun Sports Leisure Center Floor 1-2, Pudong Shanghai China")
]

let shRestaurants : [Restaurant] = [
    Restaurant(id: 1, name: "Taco Bell", image: "taco bell", style: "Mexican, Fast Food", price: "$", location: "Lujiazui", locationlat: 31.2383270, locationlong: 121.5023220, addressEN: "55 Century Avenue, Building 1, Lujiazui", addressCN: "世纪大道55号1楼", addressmap: ""),
    Restaurant(id: 2, name: "Taoyuan Village", image: "taoyuan village", style: "Asian", price: "$", location: "Jing'an", locationlat: 31.2251490, locationlong: 121.4814640, addressEN: "89 East Huaihai Road, Jing'an", addressCN: "淮海东路89弄，静安", addressmap: ""),
    Restaurant(id: 3, name: "BiQiYa Korean", image: "biqiya", style: "Korean", price: "$", location: "Yangpu", locationlat: 31.2440210, locationlong: 121.3994340, addressEN: "768 Yangliuqing Road, Putuo", addressCN: "杨柳青路768号，杨浦", addressmap: ""),
    //Can't find: Restaurant(id: 4, name: "Urban Soup Kitchen", image: "urban soup", style: "European, Soups", price: "$", location: "Century Park", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "", addressmap: ""),
    Restaurant(id: 4, name: "Pizza Express", image: "pizza express", style: "Italian, Pizza", price: "$$-$$$", location: "Lujiazui", locationlat: 31.12894654, locationlong: 121.5103861, addressEN: "Near 3498 Dongfang Road, Lujiazui", addressCN: "靠近东方路3498弄，陆家嘴", addressmap: ""),
    Restaurant(id: 5, name: "Din Tai Fung", image: "dintaifung", style: "Chinese", price: "$$-$$$", location: "Lujiazui", locationlat: 31.2349480, locationlong: 121.5076740, addressEN: "100 Century Avenue, Lujiazui", addressCN: "世纪大道100号，陆家嘴", addressmap: ""),
    Restaurant(id: 6, name: "Lost Haven", image: "lost heaven", style: "Chinese", price: "$$-$$$", location: "Former French Concession", locationlat: 31.2099270, locationlong: 121.4379840, addressEN: "38 Gaoyou Road, Xuhui", addressCN: "高邮路38号，徐汇", addressmap: ""),
    // Permanently Closed: Restaurant(id: 7, name: "Ginger Modern Asian Bistro", image: "ginger", style: "Asian, International", price: "$$-$$$", location: "Former French Concession", locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "", addressmap: ""),
    Restaurant(id: 7, name: "Haidilao Hot Pot", image: "haidilao", style: "Chinese", price: "$$-$$$", location: "Dapuqiao", locationlat: 31.2048088, locationlong: 121.4703001, addressEN: "1 Dapu Road, Dapuqiao", addressCN: "打浦路1号，打浦桥", addressmap: "")
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
