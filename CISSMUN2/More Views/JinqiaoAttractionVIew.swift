//
//  JinqiaoView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

let jqAttractions : [Attraction] = [
    Attraction(id:1, name:"Carrefour in Jinqiao (家乐福)", image:"Carrefour" , description: jqDescriptions[0], locationlat: 31.2391253, locationlong: 121.5810592, addressEN: "555 Biyun Road, Pudong District", addressCN: "碧云路555号，浦东新区", addressmap: "Carrefour in Jinqiao (家乐福)"),
    Attraction(id:2, name:"Kerry Parkside (浦东嘉里城)", image:"Kerry", description: jqDescriptions[1], locationlat: 31.2124923, locationlong: 121.5622317, addressEN: "1388 Huamu Road, Pudong District", addressCN: "花木路1388号，浦东新区", addressmap: "Kerry Parkside (浦东嘉里城)"),
    Attraction(id:3, name:"Science Museum (科技馆)", image:"Science and Tech", description: jqDescriptions[2], locationlat: 31.2180969, locationlong: 121.5410772, addressEN: "2000 Century Avenue, Pudong District", addressCN: "世纪大道2000号，浦东新区", addressmap: "Science Museum (科技馆)"),
    Attraction(id:4, name:"The Fake Market (上海科技馆)", image:"Fake Market", description: jqDescriptions[3], locationlat: 31.2180969, locationlong: 121.5410772, addressEN: "2000 Century Avenue, Pudong District", addressCN: "世纪大道2000号，浦东新区", addressmap: "The Fake Market (上海科技馆)"),
    Attraction(id:5, name:"Century Park (世纪公园)", image:"Century Park", description: jqDescriptions[4], locationlat: 31.2151576, locationlong: 121.5521626, addressEN: "1001 Jinxiu Road, Pudong District", addressCN: "锦绣路1001号，浦东新区", addressmap: "Century Park (世纪公园)")
]

let jqDescriptions: [String] = [
    "Supermarket offering a wide selection of local products and fresh produce",
    "Kerry Parkside is packed with a high-end supermarket and many international retailers",
    "The Shanghai Science and Technology Museum is the largest museum within the inner districts of the city",
    "The fake market under the Science & Technology Museum sells almost everything you might think of",
    "Century Park is an oasis of green and tranquility in Shanghai: a cosmopolitan hub"
]

struct JinqiaoAttractionView: View {
    @State private var showingPopover = false
    @State private var modalSelection = 0
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack (spacing: 0){
                    ForEach(jqAttractions, id:\.self) { attraction in
                        VStack {
                            Button(action: {
                                self.showingPopover = true
                                self.modalSelection = attraction.id
                            }) {
                                Image(attraction.image)
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geo.size.width, height: geo.size.height / 4.0)
                                    .overlay(
                                        VStack {
                                            Text(attraction.name).foregroundColor(Color.white).font(.custom("Avenir Book", size: geo.size.width / 19.0)).fontWeight(.bold).padding(.horizontal)
                                            Text(attraction.description).foregroundColor(Color.white).font(.custom("Avenir Book", size: geo.size.width / 22.0)).italic().padding(.horizontal)
                                        }
                                    )
                            }.sheet(isPresented: self.$showingPopover) {
                                PopupMapView(lat: jqAttractions[self.modalSelection - 1].locationlat, long: jqAttractions[self.modalSelection - 1].locationlong, name: jqAttractions[self.modalSelection - 1].name, addressEN: jqAttractions[self.modalSelection - 1].addressEN, addressCN: jqAttractions[self.modalSelection - 1].addressCN, addressmap: jqAttractions[self.modalSelection - 1].addressmap)
                            }
                        }
                    }
                }
            }
        }
    }
}
