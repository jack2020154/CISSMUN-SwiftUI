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
import WebKit

struct PDFViewController: UIViewRepresentable {
    var fname: String
    func makeUIView(context: Context) -> WKWebView {
        let webConfiguration = WKWebViewConfiguration()
        return WKWebView(frame: .zero, configuration: webConfiguration)
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        if let url = Bundle.main.url(forResource: fname, withExtension: "pdf") {
            let urlRequest = URLRequest(url: url)
            view.load(urlRequest as URLRequest)
        } else {
            print("PDF File not Found")
        }
    }
}
