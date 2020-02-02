//
//  AttractionMapViewController.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-01.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI
import MapKit

struct AttractionMapViewController: UIViewRepresentable {
    var lat: Double
    var long: Double
    var name: String
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = name
        view.addAnnotation(annotation)
        let concordia = MKPointAnnotation()
        concordia.coordinate = CLLocationCoordinate2D(latitude: 31.2389054, longitude: 121.5910437)
        concordia.title = "Concordia International School Shanghai"
        view.addAnnotation(concordia)
    }
}

struct PopupMapView: View {
    @Environment(\.presentationMode) private var presentationMode
    var lat: Double
    var long: Double
    var name: String
    var addressEN: String
    var addressCN: String
    var body: some View {
        GeometryReader { geo in
            VStack {
                AttractionMapViewController(lat: self.lat, long: self.long, name: self.name)
                    .frame(width: geo.size.width, height: geo.size.width * 0.75)
                Text(self.name).font(.custom("Avenir Book", size: geo.size.width / 17.0)).fontWeight(.bold)
                Text(self.addressEN).font(.custom("Avenir Book", size: geo.size.width / 22.0))
                Text(self.addressCN).font(.custom("Avenir Book", size: geo.size.width / 22.0))
                Spacer()
                Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
                    Text("Close").padding(.bottom)
                }
            }
        }
    }
}
