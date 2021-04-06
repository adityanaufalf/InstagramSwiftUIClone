//
//  FeedCell.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .center, spacing: 8) {
                Image("batman")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("Batman")
                    .font(.system(size: 14, weight: .semibold))
            }
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
            
            
            HStack(alignment: .center, spacing: 16) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20, alignment: .center)
                        .font(.system(size: 20))
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20, alignment: .center)
                        .font(.system(size: 20))
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 20))
                })
            }.foregroundColor(.black)
            .padding(.horizontal, 8)
          
            HStack {
                Text("Batman").font(.system(size: 14, weight: .bold, design: .default)) + Text(" All men have limits. They learn what they are and learn not to exceed them. I ignore mine")
                    .font(.system(size: 15))
            }.padding(.horizontal, 8)

            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.horizontal, 8)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
            .previewLayout(.sizeThatFits)
    }
}
