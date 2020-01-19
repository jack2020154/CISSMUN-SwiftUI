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
        ScrollView {
        VStack{
            //MARK: Main Vertical Stack
            Text("Welcome").multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            HStack {
                //MARK: Main Block Stack
                VStack{
                    HStack {
                        VStack (alignment: .leading){
                            Text("CISSMUN Director").padding(.horizontal)
                            Text("Erik Paulson").padding(.horizontal)
                        }
                        Spacer()
                        Text("Image of paulson")
                    }
                    Spacer().frame(height: 10)
                    Text("It is both an honor and a privilege to welcome you to the eleventh annual session of Concordia International School Shanghai Model United Nations. Whatever role you will play in this year’s event, whether chair, judge, delegate, member of the press team or anything else, I hope that the conference will leave you with a heightened understanding of the social and political challenges confronting the international community, and that you will come away more practiced in the arts of public speaking, negotiation and compromise. I look forward to your active participation in the eleventh annual session of CISSMUN, and I wish you every success.").multilineTextAlignment(.leading).padding(.horizontal)
                }
            }.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black)).padding([.top, .horizontal])
            HStack {
                //MARK: Main Block Stack
                VStack{
                    HStack {
                        VStack (alignment: .leading){
                            Text("CISSMUN Director")
                            Text("Erik Paulson")
                        }
                        Spacer()
                        Text("Image of paulson")
                    }
                    Spacer().frame(height: 10)
                    Text("It is both an honor and a privilege to welcome you to the eleventh annual session of Concordia International School Shanghai Model United Nations. Whatever role you will play in this year’s event, whether chair, judge, delegate, member of the press team or anything else, I hope that the conference will leave you with a heightened understanding of the social and political challenges confronting the international community, and that you will come away more practiced in the arts of public speaking, negotiation and compromise. I look forward to your active participation in the eleventh annual session of CISSMUN, and I wish you every success.").multilineTextAlignment(.leading).padding(.horizontal)
                }
            }.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black)).padding([.top, .horizontal])
        }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
