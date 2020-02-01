//
//  ShanghaiAttractionView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-29.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

let shAttractions: [Attraction] = [
    Attraction(id: 1, name: "Disneyland (迪斯尼乐园)", image: "disney",description: shDescriptions[0], locationlat: 31.1431690, locationlong: 121.6579875, addressEN: "34 Huangzhao Road, Chuangsha District", addressCN: "黄赵路310号，川沙镇"),
    Attraction(id: 2, name: "The Bund (外滩)", image: "bund", description: shDescriptions[1], locationlat: 31.2389930, locationlong: 121.4905150, addressEN: "1 Zhongshan East Road, Huangpu District", addressCN: "中山东路一号，黄浦区"),
    Attraction(id: 3, name: "French Concession (法租界)", image: "french concession", description: shDescriptions[2], locationlat: 31.2097880, locationlong: 121.4692920, addressEN: "210 Taikang Road, Huangpu District", addressCN: "泰康路210号，黄浦区"),
    Attraction(id: 4, name: "Yu Garden (豫园)", image: "yu garden", description: shDescriptions[3], locationlat: 31.2272199, locationlong: 121.4920953, addressEN: "218 Anren Road, Huangpu District", addressCN: "安仁路218号，黄浦区"),
    Attraction(id: 5, name: "Jing'an Temple (静安寺)", image: "jing'an temple", description: shDescriptions[4], locationlat: 31.2230700, locationlong: 121.4455956, addressEN: "1686 Nanjing West Road, Jingan District", addressCN: "南京西路1686号，静安区"),
    Attraction(id: 6, name: "The Pearl Tower (东方明珠电视塔)", image: "pearl tower", description: shDescriptions[5], locationlat: 31.2399270, locationlong: 121.4996843, addressEN: "1 Century Avenue, Lujiazui District", addressCN: "世纪大道一号，陆家嘴"),
    Attraction(id: 7, name: "Shanghai Tower (上海中心大厦)", image: "shanghai tower", description: shDescriptions[6], locationlat: 31.2334018, locationlong: 121.5055684, addressEN: "510 Yincheng Middle Road, Lujiazui District", addressCN: "银城路501号，陆家嘴")
]

let shDescriptions: [String] = [
    "Shanghai Disney Resort is a themed resort in Pudong, Shanghai, China.",
    "The Bund or Waitan is a waterfront area in central Shanghai.",
    "The leafy boulevards of the elegant French Concession are home to cozy live-music venues and boutique wine bars, as well as indie fashion shops and European delis,",
    "Yuyuan Garden is a famous classical garden located in Anren Jie(安人街), Shanghai",
    "Jing'an Temple is a Buddhist temple on the West Nanjing Road in Shanghai, China, Jing'an District",
    "The Oriental Preal Radio & TV Tower is a TV tower in Shanghai.",
    "The Shanghai Tower is a 632-metre, 128-story megatall skyscraper in Lujiazui, Pudong, Shanghai."
]

struct ShanghaiAttractionView: View {
    @State private var showingPopover = false
    @State private var modalSelection = 0
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack (spacing: 0){
                    ForEach(shAttractions, id:\.self) { attraction in
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
                                PopupMapView(lat: shAttractions[self.modalSelection - 1].locationlat, long: shAttractions[self.modalSelection - 1].locationlong, name: shAttractions[self.modalSelection - 1].name, addressEN: shAttractions[self.modalSelection - 1].addressEN, addressCN: shAttractions[self.modalSelection - 1].addressCN)
                            }
                        }
                    }
                    Spacer()
                }.frame(height: geo.size.height * 7.0 / 4.0 + (UIDevice.current.hasNotch ? 160 : 100))
            }
        }
    }
}

struct ShanghaiAttractionView_Previews: PreviewProvider {
    static var previews: some View {
        ShanghaiAttractionView()
    }
}
