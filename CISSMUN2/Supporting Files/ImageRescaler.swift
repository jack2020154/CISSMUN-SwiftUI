//
//  ImageRescaler.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-19.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ImageRescaler: View {
    var image: Image
    var text: String
    var body: some View {
        GeometryReader { geo in
            self.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width, height: 300)
                .overlay(Text(self.text).foregroundColor(.white).font(.custom("Avenir Black", size: 24)).fontWeight(.bold), alignment: .center)
                .fixedSize(horizontal: false, vertical: true)
                .edgesIgnoringSafeArea(.top)
                .offset(y: -15)
        }
    }
}

