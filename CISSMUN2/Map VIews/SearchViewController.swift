//
//  SearchViewController.swift
//  CISSMUN2
//
//  Created by Jack Wang on 2020-02-04.
//  Copyright © 2020 Jack Wang. All rights reserved.
//

import SwiftUI

struct SearchViewController: View {
    @State private var searchTerm: String = ""
    var body: some View {
        List {
            SearchBar(text: $searchTerm)
            ForEach(committees.filter{
                self.searchTerm.isEmpty ? true: $0.name.localizedStandardContains(self.searchTerm)
            }, id:\.self) { committee in
                NavigationLink(destination: FloorPlanView(committee)) {
                    Text(committee.name)
                }
            }
        }.navigationBarTitle("Committee List", displayMode: .inline)
    }
}

struct SearchBar : UIViewRepresentable {
    
    @Binding var text : String
    
    class Cordinator : NSObject, UISearchBarDelegate {
        
        @Binding var text : String
        
        init(text : Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> SearchBar.Cordinator {
        return Cordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct SearchViewController_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewController()
    }
}
