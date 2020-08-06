//
//  ScheduleView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ScheduleView: View {
    @State private var showingPopover = false
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
                            Text("Live Updates shows a changing spreadsheet that shows current topics and speakers of each committee. Because this schedule is provisional, be wary of changes to the timetable.").font(.custom("Avenir Book", size: 17)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            Spacer().frame(height: 20)
                            HStack {
                                Text("Live updates require access to Google Docs.").font(.custom("Avenir Book", size: 17)).multilineTextAlignment(.leading).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            Spacer().frame(height: 10)
                            Button(action: {self.showingPopover = true}) {
                                Text("Live Updates")
                                    .fontWeight(.bold)
                                    .font(.custom("Avenir Medium", size: 20))
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .padding(10)
                            }.sheet(isPresented: self.$showingPopover) {
                                LiveView()
                            }
                            Spacer().frame(height: 10)
                            VStack {
                                ForEach(conference, id:\.self) { conferenceDay in
                                    VStack {
                                        Spacer().frame(height: 20)
                                        Text(conferenceDay.date).font(.custom("Avenir Medium", size:24)).fontWeight(.bold).padding(.horizontal)
                                        Spacer().frame(height: 10)
                                        VStack {
                                            ForEach(conferenceDay.items, id:\.self) { event in
                                                VStack {
                                                    HStack {
                                                        Text(event.name).font(.custom("Avenir Book", size: 18)).fontWeight(.bold).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                                                        Spacer()
                                                        Text(event.time).font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                                                    }
                                                    HStack{
                                                        Text(event.location).font(.custom("Avenir Book", size: 15)).padding(.horizontal)
                                                        Spacer()
                                                    }
                                                    Spacer().frame(height: 30)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
