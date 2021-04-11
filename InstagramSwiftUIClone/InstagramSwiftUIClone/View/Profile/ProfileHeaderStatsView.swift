//
//  ProfileHeaderStatsView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 10/04/21.
//

import SwiftUI

struct ProfileHeaderStatsView: View {
    
    let count: Int
    let info: String
    
    var body: some View {
        VStack(spacing: 2) {
            Text("\(count)")
                .fontWeight(.semibold)
            Text(info)
        }.font(.system(size: 15))
        .lineLimit(1)
        .frame(width: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileHeaderStatsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderStatsView(count: 3, info: "Followers")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
