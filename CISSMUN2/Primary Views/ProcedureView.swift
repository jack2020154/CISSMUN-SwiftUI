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
                        VStack{
                            ImageRescaler(image: Image("procedure"), text: "Procedure").offset(y: 20)
                            VStack {
                                ForEach(filelist, id:\.self) { file in
                                    NavigationLink(destination: PDFViewController(dname: file.displayname,fname: file.filename)) {
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: geo.size.width - 10, height: geo.size.height / 6 - 60)
                                            .overlay(Text(file.displayname).foregroundColor(Color.white))
                                    }
                                }
                            }.offset(y: -22)
                        }
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
