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
            VStack (spacing: 15){
                Button(action: {
                    if let url = URL(string: "https://www.flickr.com/photos/bernd_thaller/16526151761/in/photolist-rbmRa4-Ymi81N-BJJT7x-YkeqME-Ywrdi1-XxDTDW-Mav45h-YsXKLe-UdokaS-phKJeM-zJg6h7-wn2HEu-L1gAnA-L9D3V7-fiiNkL-rNrJ8y-M1zr6E-JEPMKQ-y3cjmj-LarRju-zCMtno-VSmWRu-qL7npC-UdAdzq-XHYYTz-CoiwYi-Dz1RS7-Crhn8G-C9uN7v-xnUJC6-VsLUJG-P2QPxi-PaDGAv-PXqiP9-xcAqYV-NJsGGd-YF1LEA-Ep5X6V-ytZMg4-qnnNny-wn2BvW-Az91kf-B3msxm-uwXFTY-FHveM7-t4gTKU-smGCEY-pWWFqq-rwZyhY-rMkZAt") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bernd Thaller - The Bund").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://www.flickr.com/photos/mojobaron/7989772544/in/photolist-db2F23-eaNJx5-dM33Pw-agoLYM-agoJBR-dDCDHH-efKNoH-5CLazG-UsB3wX-eeGCuE-agrxVW-Y4mFUJ-nRCTiG-bvPPGW-gzzzoK-9kE8J6-bL1Td8-eEB2n-hGVTn8-jERPPw-YnH2Vo-99WV4a-pP1VvG-a16KVJ-aRjB3R-bCKc6s-bRDPmr-WfuryC-q4gdP3-9Q7S4U-fL4KZD-jESAJo-jDUw9U-jESJkW-99WU8P-efRxCQ-7cdiSV-JPs2N-7cdiPk-6tAwU8-ar6E8B-6DpZSV-rE82Q-FQzbr-f3zgTV-4Hn1CV-4HrdKw-FQytF-f3Ptiu-FQuqd") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Mojobaron - Yu Garden").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://unsplash.com/photos/5YtjgRNTli4") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Thomas Kelley - Disney").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://www.flickr.com/photos/synapticism/38278631401/in/photolist-21jxZvt-fjBhU4-RdKNiK-fjRpnm-TyHtJr-21eGfSu-21hZDbR-RDSBX9-TwfoiJ-gzAaJD-SaJwdt-21gGZCU-21eGeqS-SwkStR-RdKTDV-S88da7-21hZSHk-S87XtU-R7QPvR-SaJHkD-GmjayH-R5cqSG-dF4F7Q-qqYoFi-R7QRZi-S88e4G-Ankugz-oKjrnX-fneLm-px82J2-ofmRYm-ohiR1H-nY4AqF-edLm5X-nY3EEA-offgLc-edS3YJ-cjMMR1-8E57c2-8mpHwT-qvXohy-4cyAbg-bsuupZ-q9pAg7-iuJRn-aF16wK-fneHe-XJxnqV-GcN12p-DaeFEo") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Alexander Synaptic - Jing'an Temple").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://www.flickr.com/photos/mikeric/7325114016/in/photolist-cai8cf-jEYYuU-7w9Aih-edmhJ6-cjSKaJ-orxowG-9pXt7a-6CEvkT-e8PXWx-r1LkrV-5yH8Nz-auRTR-9zBWci-6MqhRE-9ELAqf-gnGnR4-qUViKz-X4BfRE-88MjEU-Xgow6j-qtFyes-inp34h-7KNeMW-oyN7Xs-aw8qRj-c8X5KQ-jDQHmF-9zPfKb-a4hRTV-imqwjg-in2nh9-aBaEDQ-8J2QJv-asdxZx-9Tj7o6-5fwpRt-pcJ9qz-inpPE4-Cxn9cf-smGCEY-UPmEyu-kXsB4h-qoj5WX-Xgovwo-bjxM6J-7W6WiQ-9jAtK4-6GQhVw-7DB3tx-8BvmoV") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("mikeric - Pearl Tower").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://unsplash.com/photos/8BkzQUIGn-8") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Wang Xi - Shanghai Tower").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
                Button(action: {
                    if let url = URL(string: "https://icons8.com") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Icons by Icons8").foregroundColor(Color("reversedBackgroundColor")).font(.custom("Avenir Book", size: 15)).underline()
                }
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
