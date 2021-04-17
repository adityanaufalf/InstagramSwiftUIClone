//
//  CustomSecureEditText.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 16/04/21.
//

import SwiftUI

struct CustomSecureEditText: View {
    
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
                
            
                SecureField("", text: $text)
                
            }.font(.system(size: 15))
        }
    }
}

struct CustomSecureEditText_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureEditText(text: .constant("adit@happy5.co"), placeholder: "Email", imageName: "envelope").preferredColorScheme(.dark)
            .padding()
    }
}
