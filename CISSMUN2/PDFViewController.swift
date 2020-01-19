//
//  PDFViewController.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-19.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct PDFViewController: View {
    var dname: String
    var fname: String
    var body: some View {
        VStack {
            Text("PDFViewController Template")
            Text("Display Name: " + dname)
            Text("File Name: " + fname)
        }
    }
}

struct PDFViewController_Previews: PreviewProvider {
    static var previews: some View {
        PDFViewController(dname: "dname", fname: "fname")
    }
}
