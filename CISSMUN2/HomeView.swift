//
//  HomeView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
            //TODO: Implement badge color
            ScrollView{
                VStack{
                    ImageRescaler(image: Image("welcome"), text: "Welcome")
                    //FIXME: ImageView does not align to top, leaving space there
                    Spacer().frame(height: 280)
                    //TODO: Find fix that uses dynamic height instead of constant height
                    HStack {
                        VStack{
                            HStack {
                                VStack (alignment: .leading){
                                    Text("CISSMUN Director").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal)
                                    Text("Erik Paulson").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                                }
                                Spacer()
                                Image("Paulson").resizable().frame(width: 100, height: 100).padding([.top, .horizontal])
                            }
                            Spacer().frame(height: 10)
                            Text("It is both an honor and a privilege to welcome you to the eleventh annual session of Concordia International School Shanghai Model United Nations. Whatever role you will play in this year’s event, whether chair, judge, delegate, member of the press team or anything else, I hope that the conference will leave you with a heightened understanding of the social and political challenges confronting the international community, and that you will come away more practiced in the arts of public speaking, negotiation and compromise. I look forward to your active participation in the eleventh annual session of CISSMUN, and I wish you every success.").font(.custom("Avneir Book", size: 17)).multilineTextAlignment(.leading).padding([.bottom, .horizontal]).fixedSize(horizontal: false, vertical: true)
                        }
                    }.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("blackWhite"))).padding([.top, .horizontal])
                    HStack {
                        VStack{
                            HStack {
                                VStack (alignment: .leading){
                                    Text("Secertary General").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal)
                                    Text("Corey Zhou").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                                }
                                Spacer()
                                Image("Corey").resizable().frame(width: 100, height: 100).padding([.top, .horizontal])
                            }
                            Spacer().frame(height: 10)
                            Text("I am honored to serve as the Secretary General for the eleventh annual session of CISSMUN. I am excited to welcome all of you to be a part of this platform for growth, education, communication, and diplomacy. On behalf of all, we hope that you will have a worthwhile experiance at CISSMUN XI.").font(.custom("Avneir Book", size: 17)).multilineTextAlignment(.leading).padding([.bottom, .horizontal]).fixedSize(horizontal: false, vertical: true)
                        }
                    }.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("blackWhite"))).padding([.top, .horizontal])
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
