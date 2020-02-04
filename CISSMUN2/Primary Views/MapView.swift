//
//  MapView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ScrollView {
                    ZStack {
                        Color("backgroundColor")
                        VStack {
                            Image("ConcordiaMap")
                                .resizable()
                                .frame(width: geo.size.width, height: geo.size.width)
                                .padding(.horizontal)
                            Text("The CISSMUN conference is spread across all five buildings at Concordia: The Lower, Intermediate, and Upper Buildings, the Phoenix Centre, and the Rittman Centre. Use the search tool to find where your committee is.\n\nPlease note the room number in which your committee is in as its subject to change.").font(.custom("Avenir Book", size: 15)).padding(.horizontal, 20)
                            Spacer()
                        }
                    }.frame(minHeight: geo.size.height)
                }.navigationBarTitle("Campus Maps", displayMode: .inline)
                .navigationBarItems(trailing:
                    NavigationLink(destination: SearchViewController()) {
                        Image(systemName: "magnifyingglass")
                        .resizable()
                            .frame(width: 25, height: 25)
                    }
                )
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
