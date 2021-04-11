//
//  SearchView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct SearchView: View {
    
    @State private var text: String = ""
    @State private var isEditing: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding()
            
            if isEditing {
                UserListView()
            } else {
                PostGridView()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
