//
//  LiveViewController.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-23.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

//  Manages the live view
//  Called from ProcedureView

import SwiftUI
import WebKit

struct LiveViewController: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webConfiguration = WKWebViewConfiguration()
            return WKWebView(frame: .zero, configuration: webConfiguration)
    }
    func updateUIView(_ view: WKWebView, context: Context) {
        let urlGdoc = URL(string:"https://docs.google.com/spreadsheets/d/1_6kUJqVvWLaz3HnifV5gRBg_mUwaLVQUz32WUnZOfwg/edit?folder=0AOQShJ2WO7hHUk9PV")
        let urlRequest = URLRequest(url: urlGdoc!)
        view.load(urlRequest as URLRequest)
    }
}

struct LiveView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        GeometryReader { geo in
            VStack {
                LiveViewController()
                    .frame(width: geo.size.width, height: geo.size.height * 0.9)
                Spacer()
                Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.blue)
                        .frame(width: geo.size.width - 10, height: geo.size.height * 0.1 - 7)
                        .overlay(Text("Close").foregroundColor(Color.white).fontWeight(.bold))
                        .padding(.bottom)
                }
            }
        }
    }
}

struct LiveViewController_Previews: PreviewProvider {
    static var previews: some View {
        LiveViewController()
    }
}
