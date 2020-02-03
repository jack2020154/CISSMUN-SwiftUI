//
//  ShanghaiView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ShanghaiView: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false){
                ZStack {
                    Color("backgroundColor")
                    VStack {
                        VStack {
                            Image("shanghai")
                                .resizable()
                                .frame(width: geo.size.width, height: geo.size.width * 0.66)
                                .overlay(Text("Shanghai").foregroundColor(.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold), alignment: .center)
                                Text("Shanghai is the largest city by population in the People's Republic of China and one of the largest in the world. Often called the \"showpeice\" of the new China, Shanghai offers visitors a cosmopolitan blend of traditiona nd modernity, a place where ancient historical sites blend seamlessly with one of the world's most modern and spectacular skylines.").font(.custom("Avenir Book", size: 15)).italic().padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                        }
                        VStack (spacing: 8){
                            NavigationLink(destination: ShanghaiAttractionView().navigationBarTitle("Shanghai Attractions", displayMode: .inline)) {
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("reversedBackgroundColor"))
                                    .frame(width: geo.size.width, height: geo.size.height / 13.0)
                                    .overlay(
                                        HStack {
                                        Text("Attractions").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                            Spacer()
                                            Text(">").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                        }
                                    )
                            }
                            NavigationLink(destination: ShanghaiTransportationView().navigationBarTitle("Transportation", displayMode: .inline)) {
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("reversedBackgroundColor"))
                                    .frame(width: geo.size.width, height: geo.size.height / 13.0)
                                    .overlay(
                                        HStack {
                                        Text("Transportation").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                            Spacer()
                                            Text(">").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                        }
                                    )
                            }
                            NavigationLink(destination: ShanghaiDiningView().navigationBarTitle("Shanghai Dining", displayMode: .inline)) {
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("reversedBackgroundColor"))
                                    .frame(width: geo.size.width, height: geo.size.height / 13.0)
                                    .overlay(
                                        HStack {
                                        Text("Dining").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                            Spacer()
                                            Text(">").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                        }
                                    )
                            }
                            NavigationLink(destination: PDFViewController(fname: "Saturday Night Excursion").navigationBarTitle("Saturday Night Excursion", displayMode: .inline)) {
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("reversedBackgroundColor"))
                                    .frame(width: geo.size.width, height: geo.size.height / 13.0)
                                    .overlay(
                                        HStack {
                                            Text("Saturday Night Excursion").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                            Spacer()
                                            Text(">").foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
                                        }
                                    )
                            }
                        }
                        Spacer()
                    }
                }.frame(minHeight: geo.size.height)
            }
        }.navigationBarTitle(Text("Shanghai"), displayMode: .inline)
    }
}


struct ShanghaiView_Previews: PreviewProvider {
    static var previews: some View {
        ShanghaiView()
    }
}
