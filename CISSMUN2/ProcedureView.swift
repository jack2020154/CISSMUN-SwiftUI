//
//  ProcedureView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-18.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct Files: Identifiable {
    var id: Int
    var displayname: String
    var filename: String
}


struct ProcedureView: View {

    let filelist: [Files] = [
        Files(id: 1, displayname: "Cover Page", filename: "coverpage.pdf"),
        Files(id: 2, displayname: "Preparatory Meeting Guidelines", filename: "prepmeetguides.pdf"),
        Files(id: 3, displayname: "CISSMUN Rules of Procedure", filename: "cissrop.pdf"),
        Files(id: 4, displayname: "Chairing at CISSMUN", filename: "munchair.pdf"),
        Files(id: 5, displayname: "Appendix 1: THIMUN Rules of Procedure", filename: "thirop.pdf"),
        Files(id: 6, displayname: "Appendix 2: United Nations Charter", filename: "uncharter.pdf")
    ]
    
    var body: some View {
        NavigationView {
            List(filelist, id:\.id) { file in
                NavigationLink(destination: PDFViewController(dname: file.displayname, fname: file.filename)) {
                    Text(file.displayname)
                }
            }.navigationBarTitle(Text("Documents"))
        }
    }
}

struct ProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureView()
    }
}