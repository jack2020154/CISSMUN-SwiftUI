//
//  ContactView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color("backgroundColor")
                VStack {
                    Image("contact")
                        .resizable()
                        .frame(width: geo.size.width, height: geo.size.width * 0.66)
                        .overlay(Text("Contacts").foregroundColor(.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold), alignment: .center)
                    HStack {
                        Text("Emergency").font(.custom("Avenir Book", size: 24)).fontWeight(.bold).padding(.horizontal)
                        Spacer()
                    }
                    Spacer().frame(height: 20)
                    HStack {
                        Text("Police (Calling)").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                        Spacer()
                        Text("110").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    }
                    Spacer().frame(height: 10)
                    HStack {
                        Text("Police (Text Message)").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                        Spacer()
                        Text("12110").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    }
                    Spacer().frame(height: 10)
                    HStack {
                        Text("First-aid Ambulance").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                        Spacer()
                        Text("120").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    }
                    Spacer().frame(height: 10)
                    HStack {
                        Text("Fire").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                        Spacer()
                        Text("119").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle(Text("Contact"), displayMode: .inline)
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
