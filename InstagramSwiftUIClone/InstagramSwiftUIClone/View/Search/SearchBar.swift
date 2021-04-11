//
//  SearchBar.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 08/04/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack(spacing: 8) {
            ZStack(alignment: .leading) {
                TextField("Search", text: $text)
                    .padding(.leading, 24)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 12, height: 12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }.padding(8)
            .padding(.horizontal, 8)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(8)
            .transition(.move(edge: .trailing))
            .animation(.default)
            .onTapGesture {
                isEditing = true
            }
           
            if isEditing {
                Button(action: {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                }).transition(.move(edge: .trailing))
                .animation(.default)
            
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search"), isEditing: .constant(false))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
