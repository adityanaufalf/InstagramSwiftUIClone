//
//  CustomEditText.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 14/04/21.
//

import SwiftUI

struct CustomEditText: View {
    @Binding var text: String
    let placeholder: String
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color.white)
                    .font(.system(size: 15))
                    .padding(.leading, 36)
            }
            
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white)
                
            
                TextField("", text: $text)
                
            }.font(.system(size: 15))
        }
       

    }
}

struct CustomEditText_Previews: PreviewProvider {
    static var previews: some View {
        CustomEditText(text: .constant(""), placeholder: "Email", imageName: "envelope").preferredColorScheme(.dark)
            .padding()
    }
}
