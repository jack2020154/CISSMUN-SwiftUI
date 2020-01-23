//
//  ScheduleView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ScrollView {
            ZStack {
                Color("backgroundColor")
                VStack(alignment: .leading){
                    VStack{
                        HStack {
                            Text("Provisional Schedule").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding([.horizontal, .top])
                            Spacer()
                        }
                        Spacer().frame(height: 10)
                        Text("Click on the button below to view a live-updating spreadsheet that shows current topics and speakers of each committee. Because this schedule is provisional, be wary of changes to the timetable.").font(.custom("Avenir Book", size: 17)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                        Spacer().frame(height: 20)
                        Text("Live updates require a VPN connection.                   ").font(.custom("Avenir Book", size: 17)).multilineTextAlignment(.leading).padding(.horizontal)
                        Button(action: {
                            LiveViewController()
                        }) {
                            Text("Live Updates")
                                .fontWeight(.bold)
                                .font(.custom("Avenir Medium", size: 20))
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                        }
                    }
                }
            }
        }
    }
}
