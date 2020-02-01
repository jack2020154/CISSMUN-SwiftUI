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
