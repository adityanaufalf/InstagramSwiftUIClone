//
//  PostGridView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 08/04/21.
//

import SwiftUI

struct PostGridView: View {
    private var gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    private var width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2, content: {
            ForEach(0 ..< 10) { _ in
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
            .previewLayout(.sizeThatFits)
    }
}
