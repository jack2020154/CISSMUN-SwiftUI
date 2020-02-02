//
//  JinqiaoView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct JinqiaoView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    ZStack {
                        Color("backgroundColor")
                        VStack {
                            VStack {
                                Image("jinqiao")
                                    .resizable()
                                    .frame(width: geo.size.width, height: geo.size.width * 0.66)
                                    .overlay(Text("Jinqiao").foregroundColor(.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold), alignment: .center)
                                    Text("Jinqiao is located in the middle of Pudong, and is most notable for its large number of international schools, comfortable environment, and relatively high proportion of foreigners. Jinqiao also governs a total of seven residential areas with a population of over 28,000").font(.custom("Avenir Book", size: 15)).italic().padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            }
                                VStack (spacing: 8){
                                    NavigationLink(destination: JinqiaoAttractionView()) {
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
                                    NavigationLink(destination: JinqiaoDiningView()) {
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
                                }
                            Spacer()
                        }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: (UIDevice.current.hasNotch ? 170 : 100), trailing: 0))
                    }
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}


struct JinqiaoView_Previews: PreviewProvider {
    static var previews: some View {
        JinqiaoView()
    }
}
