//
//  PDFViewController.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-19.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

//  Displays the PDF documents
//  Called from ProcedureView

import SwiftUI

struct PDFViewController: View {
    var dname: String
    var fname: String
    var body: some View {
        ZStack {
            Color("backgroundColor")
            VStack {
                Text("PDFViewController Template")
                Text("Display Name: " + dname)
                Text("File Name: " + fname)
            }.navigationBarTitle(Text(dname), displayMode: .inline)
        }
    }
}

struct PDFViewController_Previews: PreviewProvider {
    static var previews: some View {
        PDFViewController(dname: "dname", fname: "fname")
    }
}
