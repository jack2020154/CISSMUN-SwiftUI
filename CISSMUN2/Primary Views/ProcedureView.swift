//
//  ProcedureView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

let filelist: [Files] = [
    Files(id: 1, displayname: "Cover Page", filename: "coverpage"),
    Files(id: 2, displayname: "Preparatory Meeting Guidelines", filename: "prepmeetguides"),
    Files(id: 3, displayname: "CISSMUN Rules of Procedure", filename: "cissrop"),
    Files(id: 4, displayname: "Chairing at CISSMUN", filename: "munchair"),
    Files(id: 5, displayname: "Appendix 1: THIMUN Rules of Procedure", filename: "thirop"),
    Files(id: 6, displayname: "Appendix 2: United Nations Charter", filename: "uncharter")
]

struct Files: Identifiable, Hashable {
    var id: Int
    var displayname: String
    var filename: String
}

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
                                NavigationLink(destination: PDFViewController(fname: file.filename).navigationBarTitle(file.displayname)) {
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("reversedBackgroundColor"))
                                        .frame(width: geo.size.width, height: geo.size.height / 12)
                                        .shadow(radius: 10)
                                        .overlay(
                                            HStack {
                                                Text(file.displayname).font(.custom("Avenir Book", size: geo.size.width / 22.0)).foregroundColor(Color("reversedBlackWhite")).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                                                Spacer()
                                                Text(">").font(.custom("Avenir Book", size: 20)).foregroundColor(Color("reversedBlackWhite")).padding(.horizontal)
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
