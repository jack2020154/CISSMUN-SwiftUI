//
//  SettingsView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-27.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct About: View {
    var body: some View {
        ZStack {
            Color("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack (alignment: .center){
                Image("concordia").edgesIgnoringSafeArea(.top)
                Text("CISSMUN Version 2.0.0").font(.custom("Avenir Medium", size: 25)).fontWeight(.bold).offset(y: -70)
                Spacer().frame(height: 10)
                Text("Version 1: Stanley Liu, Edward Huang,").font(.custom("Avenir Book", size: 20)).offset(y: -50).padding(.horizontal)
                Text("Tanya Lai, Katrina Tsang").font(.custom("Avenir Book", size: 20)).offset(y: -50).padding(.horizontal)
                Spacer().frame(height: 10)
                Text("Version 2: Jack Wang").font(.custom("Avenir Book", size: 20)).offset(y: -50)
                Spacer().frame(height: 10)
                Text("Android: Joshua Cheng").font(.custom("Avenir Book", size: 20)).offset(y: -50)
            }.navigationBarTitle(Text("About"), displayMode: .inline)
        }
    }
}

struct Ack: View {
    var body: some View {
        ZStack{
            Color("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Acknowledgements")
                Spacer()
            }.navigationBarTitle(Text("Acknowledgements"), displayMode: .inline)
        }
    }
}

struct LegalView: View {
    var body: some View {
            GeometryReader{ geo in
                VStack {
                    NavigationLink(destination: About()) {                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("backgroundColor"))
                            .frame(width: geo.size.width - 15, height: geo.size.height / 2 - 15)
                            .overlay(Text("About").font(.custom("Avenir Medium", size: 30)).foregroundColor(Color("blackWhite")))
                    }
                        Spacer().frame(height: 10)
                    NavigationLink(destination: Ack()) {
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("backgroundColor"))
                            .frame(width: geo.size.width - 15, height: geo.size.height / 2 - 15)
                            .overlay(Text("Acknowledgements").font(.custom("Avenir Medium", size: 30)).foregroundColor(Color("blackWhite")))
                    }
                }.navigationBarTitle(Text("Legal"))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        LegalView()
    }
}
