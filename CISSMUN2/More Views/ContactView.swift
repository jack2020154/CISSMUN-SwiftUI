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
        ZStack {
            Color("backgroundColor")
            VStack {
                ImageRescaler(image: Image("contact"), text:"Contact Us")
                HStack {
                    Text("Emergency").font(.custom("Avenir Book", size: 24)).fontWeight(.bold).padding(.horizontal)
                    Spacer()
                }.offset(y: -30)
                Spacer()
                HStack {
                    Text("Police (Calling)").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    Spacer()
                    Text("110").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                }.offset(y: -30)
                Spacer().frame(height: 10)
                HStack {
                    Text("Police (Text Message)").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    Spacer()
                    Text("12110").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                }.offset(y: -30)
                Spacer().frame(height: 10)
                HStack {
                    Text("First-aid Ambulance").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    Spacer()
                    Text("120").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                }.offset(y: -30)
                Spacer().frame(height: 10)
                HStack {
                    Text("Fire").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                    Spacer()
                    Text("119").font(.custom("Avenir Book", size: 20)).padding(.horizontal)
                }.offset(y: -30)
            }
        }
        .navigationBarTitle(Text("Contact"), displayMode: .inline)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
