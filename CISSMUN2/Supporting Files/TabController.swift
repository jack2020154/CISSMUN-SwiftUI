//
//  HomeView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-14.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

//  Defines the Tab Menu at the bottom of the sreen, with the selection attribute setting the default view of home.

import SwiftUI

struct TabController: View{
    @State private var selection = 2
    var body: some View {
        TabView (selection: $selection){
            ProcedureView().tabItem {
                Image(systemName: "1.circle")
                Text("Procedure")
            }.tag(0)
            ScheduleView().tabItem {
                Image(systemName: "2.circle")
                Text("Schedule")
            }.tag(1)
            HomeView().tabItem {
                Image(systemName: "3.circle")
                Text("Home")
            }.tag(2)
            MapView().tabItem {
                Image(systemName: "4.circle")
                Text("Map")
            }.tag(3)
            MoreView().tabItem {
                Image(systemName: "5.circle")
                Text("More")
            }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
