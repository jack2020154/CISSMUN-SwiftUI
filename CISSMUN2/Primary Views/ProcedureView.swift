//
//  ProcedureView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ProcedureView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ZStack {
                    Color("backgroundColor")
                    VStack {
                        Image("procedure")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.width * 0.66)
                            .overlay(Text("Procedure").foregroundColor(.white).font(.custom("Avenir Book", size: 24)).fontWeight(.bold), alignment: .center)
                        VStack {
                            ForEach(filelist, id:\.self) { file in
                                NavigationLink(destination: PDFViewController(dname: file.displayname,fname: file.filename)) {
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: geo.size.width, height: geo.size.height / 12)
                                        .shadow(radius: 10)
                                        .overlay(
                                            HStack {
                                                Text(file.displayname).font(.custom("Avenir Book", size: geo.size.width / 22.0)).foregroundColor(Color.white).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                                                Spacer()
                                                Text(">").font(.custom("Avenir Book", size: 20)).foregroundColor(Color.white).padding(.horizontal)
                                            }
                                        )
                                }
                            }
                        }
                    }.edgesIgnoringSafeArea(.all)
                }.navigationBarTitle("Documents", displayMode: .inline)
            }
        }
    }
}

struct ProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureView()
    }
}
