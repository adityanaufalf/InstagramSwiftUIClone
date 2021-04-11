//
//  NotificationCell.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 10/04/21.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var isShowPostImage = false
    
    var body: some View {
        HStack(spacing: 16) {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
            
            Text("batman")
                .font(.system(size: 14, weight: .semibold, design: .default)) +
                Text(" liked one of your posts.")
                    .font(.system(size: 15))
            Spacer()
            
            if isShowPostImage {
                Image("joker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            } else {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Following")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 4)
                        .background(
                            Capsule()
                                .fill(Color.blue)
                        )
                })
            }
           
        }.padding()
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
            .previewLayout(.sizeThatFits)
    }
}
