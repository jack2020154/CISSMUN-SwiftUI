//
//  MoreView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("backgroundColor")
                GeometryReader{ geo in
                    VStack {
                        NavigationLink(destination: ShanghaiView()) {
                            Image("shanghai")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: geo.size.width - 15, height: geo.size.height / 4 - 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(Text("Shanghai").foregroundColor(Color.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold))
                        }
                        NavigationLink(destination: JinqiaoView()) {
                            Image("jinqiao")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: geo.size.width - 15, height: geo.size.height / 4 - 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(Text("Jinqiao").foregroundColor(Color.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold))
                        }
                        NavigationLink(destination: ContactView()) {
                            Image("contact")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: geo.size.width - 15, height: geo.size.height / 4 - 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(Text("Contact").foregroundColor(Color.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold))
                        }
                        NavigationLink(destination: LegalView()) {
                            Image("settings")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: geo.size.width - 15, height: geo.size.height / 4 - 10)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(Text("Legal").foregroundColor(Color.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold))
                        }
                    }
                }.navigationBarTitle(Text("More"), displayMode: .inline)
            }
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
