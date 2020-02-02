//
//  ShanghaiTransportationView.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-01-29.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct ShanghaiTransportationView: View {
    var body: some View {
        GeometryReader{ geo in
                ScrollView {
                    ZStack {
                        Color("backgroundColor")
                        VStack (spacing: 8){
                            HStack {
                                Text("To/From Shanghai").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal)
                                Spacer()
                            }
                            Text("Shanghai is served by two international airports with daily flights from many Chinese cities, most Asian capitals and many other American and European destinations. Shanghai is also a major hub for China's high-speed rail network, with efficient service from Beijing, Hong Kong and many other cities.").font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            Text("Schools are expected to make their own travel arrangements, but please feel free to contact us if you require assistance in obtaining the necessary entrace visas.").font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            HStack {
                                Text("To/From Concordia").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal)
                                Spacer()
                            }
                            Text("Despite Shanghai's large size, it's easy to get to Concordia no matter where you are. It has the second largest metro network in the world by length, stations, and annual ridership.").font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            VStack {
                                NavigationLink(destination: PDFViewController(fname: "shanghaitransport").navigationBarTitle("Travel Details")) {
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(width: geo.size.width, height: 60)
                                        .foregroundColor(Color("reversedBackgroundColor"))
                                        .overlay(
                                            HStack {
                                                Text("Additional Travel Details").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal).foregroundColor(Color("reversedBlackWhite"))
                                                Spacer()
                                                Text(">").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal).foregroundColor(Color("reversedBlackWhite"))
                                            }
                                        )
                                }
                            }
                            HStack {
                                Text("Airport Transfers").font(.custom("Avenir Medium", size: 20)).fontWeight(.bold).padding(.horizontal)
                                Spacer()
                            }
                            Text("The CISSMUN administrative staff will arange a bus transfer (on arrival and/or departure) from Pudong or Hongqiao airport, or from any of the Shanghai Railway stations, for any school that requires it. Please fill out the Arrival/Desparture form at https://www.cissmun.org/arrivaldeparture-form/ to communicate your numbers and specific travel details.").font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                            Text("The cost of buses to and from the airport/train station will be borne by the visiting schools, and will be included with the conference registration fees on your school's CISSMUN invoice. That cost is RMB 900.00 or USD 130.00 each way.").font(.custom("Avenir Book", size: 15)).padding(.horizontal).fixedSize(horizontal: false, vertical: true)
                        }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: (UIDevice.current.hasNotch ? 170 : 100), trailing: 0))
                    }
            }
        }
    }
}

struct ShanghaiTransportationView_Previews: PreviewProvider {
    static var previews: some View {
        ShanghaiTransportationView()
    }
}
