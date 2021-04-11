//
//  UserCellView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 08/04/21.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Batman")
                    .fontWeight(.semibold)
                
                Text("Bruce Wayne")

            }.font(.system(size: 15))
            
            Spacer()
        }.padding(8)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
