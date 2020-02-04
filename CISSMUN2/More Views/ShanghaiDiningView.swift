//
//  ShanghaiDiningView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-03.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ShanghaiDiningView: View {
    @State private var showingPopover = false
    @State private var modalSelection = 0
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack {
                    Color("reversedBackgroundColor")
                    VStack (spacing: 5){
                        ForEach(shRestaurants, id:\.self) { restaurant in
                            Button(action: {
                                self.showingPopover = true
                                self.modalSelection = restaurant.id
                            }) {
                                ZStack {
                                    Color("backgroundColor")
                                    HStack {
                                        Image(restaurant.image)
                                            .resizable()
                                            .renderingMode(.original)
                                            .frame(width: geo.size.width / 5.0, height: geo.size.width / 5.0)
                                            .padding(.leading)
                                        VStack {
                                            HStack {Text(restaurant.name).font(.custom("Avenir Medium", size: 15)).fontWeight(.bold).foregroundColor(Color("blackWhite")); Spacer(); Image(systemName: "ellipsis.circle.fill").padding(.horizontal)}
                                            HStack {Text(restaurant.style).font(.custom("Avenir Book", size: 13)).foregroundColor(Color("blackWhite")); Spacer()}
                                            HStack {Text(restaurant.price + " - " + restaurant.location).font(.custom("Avenir Book", size: 12)).italic().foregroundColor(Color("blackWhite")); Spacer()}
                                        }
                                    }.frame(width: geo.size.width - 5, height: geo.size.width / 5.0 + 10)
                                }
                            }.sheet(isPresented: self.$showingPopover) {
                                PopupMapView(lat: shRestaurants[self.modalSelection - 1].locationlat, long: shRestaurants[self.modalSelection - 1].locationlong, name: shRestaurants[self.modalSelection - 1].name, addressEN: shRestaurants[self.modalSelection - 1].addressEN, addressCN: shRestaurants[self.modalSelection - 1].addressCN)
                            }
                        }.shadow(radius: 5)
                    }.padding([.top, .bottom]).frame(minHeight: geo.size.height)
                }
            }
        }
    }
}

struct ShanghaiDiningView_Previews: PreviewProvider {
    static var previews: some View {
        ShanghaiDiningView()
    }
}
