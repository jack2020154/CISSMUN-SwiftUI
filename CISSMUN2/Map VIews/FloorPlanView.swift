//
//  FloorPlanView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-04.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct FloorPlanView: View {
    var committee : Committee
    var floordata: CompoundFloor
    
    init(_ committee: Committee) {
        self.committee = committee
        self.floordata = findFloor(committee: committee)
    }
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color("backgroundColor")
                VStack {
                Text(self.floordata.committee.name).font(.custom("Avenir Medium", size: 24)).fontWeight(.bold)
                Text(self.floordata.floor.description).font(.custom("Avenir Book", size: 20))
                Image(self.floordata.floor.image)
                    .resizable()
                    .frame(width: geo.size.width, height: geo.size.width * 0.75)
                }
            }.frame(minHeight: geo.size.width)
        }
    }
}

func findFloor(committee: Committee) -> CompoundFloor{
    if let floor = floorMaps.first(where: {committee.floor == $0.image}) {
        return CompoundFloor(committee: committee, floor: floor)
    } else {
        return CompoundFloor(committee: Committee(0, "Not Found", "Not Found"), floor: Floor(0, "Not Found", "Not Found"))
    }
}

//struct FloorPlanView_Previews: PreviewProvider {
//    static var previews: some View {
//        FloorPlanView()
//    }
//}
