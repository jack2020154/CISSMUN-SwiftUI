//
//  PDFRowView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-20.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct PDFRowView: View {
    var displayname: String
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color.red).frame(width: 150, height: 150).overlay(Text(self.displayname).padding(.horizontal))
        }
    }
}
