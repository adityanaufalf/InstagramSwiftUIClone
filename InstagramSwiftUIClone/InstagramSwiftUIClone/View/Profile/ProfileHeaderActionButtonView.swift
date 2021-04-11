//
//  ProfileHeaderActionButtonView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 10/04/21.
//

import SwiftUI

struct ProfileHeaderActionButtonView: View {
    @State var isFollowed: Bool = true
    @State var isCurrentUser: Bool = false
    
    private var width = UIScreen.main.bounds.width / 2
    
    var body: some View {
        if !isCurrentUser {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .foregroundColor(isFollowed ? .white : .black)
                        .font(.system(size: 14, weight: .semibold))
                })
                .frame(width: width - 16)
                .padding(.vertical, 6)
                .background(isFollowed ? .blue : Color.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray, lineWidth: 0.3)
                )
                .cornerRadius(4)
                
                Button(action: {
                    
                }, label: {
                    Text("Message")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .semibold))
                })
                .frame(width: width - 16)

                .padding(.vertical, 6)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray, lineWidth: 0.3)
                )
                .cornerRadius(4)

            }.frame(minWidth: 0, maxWidth: .infinity)
        } else {
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .semibold))
            }).frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 6)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 0.3)
            )
        }
    }
}

struct ProfileHeaderActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderActionButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
