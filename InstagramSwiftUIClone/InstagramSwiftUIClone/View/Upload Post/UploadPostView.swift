//
//  UploadPostView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct UploadPostView: View {
    
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State private var caption: String = ""
    @State private var isShowPicker = false
    
    var body: some View {
        
        VStack(spacing: 24) {
            if let image = image {
                HStack(alignment: .top, spacing: 16) {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 96, height: 96, alignment: .center)
                    
                    TextField("Enter your caption...", text: $caption)
                        .font(.system(size: 14))
                    
                }
                Button(action: {
                }, label: {
                    Text("Share")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold, design: .default))
                })
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(Color.blue)
                .cornerRadius(4)
                Spacer()
            } else {
                Button(action: {
                    isShowPicker.toggle()
                }, label: {
                    Image("ico-add-photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 96, height: 96, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }).sheet(isPresented: $isShowPicker, onDismiss: loadImage) {
                    ImagePicker(selectedImage: $selectedImage)
                }.padding(.top, 64)
            }
        }.padding()
    }
}

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
