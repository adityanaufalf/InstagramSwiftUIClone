//
//  ProfileHeaderView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 10/04/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                
                Spacer()
                HStack(spacing: 16) {
                    ProfileHeaderStatsView(count: 3, info: "Posts")
                    ProfileHeaderStatsView(count: 4010, info: "Followers")
                    ProfileHeaderStatsView(count: 4000, info: "Following")
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Bruce Wayne")
                    .font(.system(size: 15, weight: .semibold))
                
                Text("Gotham's Dark Knight || Billionaire")
                    .font(.system(size: 15))
            }
            
            ProfileHeaderActionButtonView()
               
            
        }.padding(16)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
