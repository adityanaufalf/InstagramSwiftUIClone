//
//  FeedView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct  FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(0 ..< 10) { _ in
                    FeedCell()
                }
            }.padding(.top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
