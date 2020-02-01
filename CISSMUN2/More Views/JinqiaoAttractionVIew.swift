//
//  JinqiaoView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

let jqAttractions : [Attraction] = [
    Attraction(id:1, name:"Carrefour in Jinqiao (家乐福)", image:"Carrefour" , description: jqDescriptions[0], locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Attraction(id:2, name:"Kerry Parkside (浦东嘉里城)", image:"Kerry", description: jqDescriptions[1], locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Attraction(id:3, name:"Science Museum (科技馆)", image:"Science and Tech", description: jqDescriptions[2], locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Attraction(id:4, name:"The Fake Market (上海科技馆)", image:"Fake Market", description: jqDescriptions[3], locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: ""),
    Attraction(id:5, name:"Century Park (世纪公园)", image:"Century Park", description: jqDescriptions[4], locationlat: 0.0, locationlong: 0.0, addressEN: "", addressCN: "")
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
                                PopupMapView(lat: jqAttractions[self.modalSelection - 1].locationlat, long: jqAttractions[self.modalSelection - 1].locationlong, name: jqAttractions[self.modalSelection - 1].name, addressEN: jqAttractions[self.modalSelection - 1].addressEN, addressCN: jqAttractions[self.modalSelection - 1].addressCN)
                            }
                        }
                    }
                    Spacer()
                    //TODO: Use dynamic height based off array length rather than fixed size
                }.frame(height: geo.size.height * 5.0 / 4.0 + (UIDevice.current.hasNotch ? 160 : 100))
            }
        }
    }
}
