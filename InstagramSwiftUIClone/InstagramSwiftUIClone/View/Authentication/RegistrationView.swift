//
//  RegistrationView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 16/04/21.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var emailText: String = ""
    @State private var usernameText: String = ""
    @State private var fullName: String = ""
    @State private var passwordText: String = ""
    
    @State private var isShowImagePicker: Bool = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 54) {
            if let image = profileImage {
                Button(action: {
                    isShowImagePicker.toggle()
                }, label: {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 128, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
                .sheet(isPresented: $isShowImagePicker, onDismiss: loadImage, content: {
                    ImagePicker(selectedImage: $selectedImage)
                }).padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
            } else {
                Button(action: {
                    isShowImagePicker.toggle()
                }, label: {
                    Image("ico-add-photo")
                        .resizable()
                        .frame(width: 128, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFill()
                        .foregroundColor(.white)
                })
                .sheet(isPresented: $isShowImagePicker, onDismiss: loadImage, content: {
                    ImagePicker(selectedImage: $selectedImage)
                })
                
            }
           
            VStack(alignment: .center, spacing: 16) {
                CustomEditText(text: $emailText, placeholder: "Email", imageName: "envelope")
                    .padding()
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                
                CustomEditText(text: $usernameText, placeholder: "Username", imageName: "person")
                    .padding()
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                
                CustomEditText(text: $fullName, placeholder: "Full Name", imageName: "person")
                    .padding()
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(6)
                    .foregroundColor(.white)

                
                CustomSecureEditText(text: $passwordText, placeholder: "Password", imageName: "lock")
                    .padding()
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                
    
                Button(action: {
                    
                }, label: {
                    Spacer()
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                }).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                .font(.headline)
                .background(
                    Capsule()
                        .fill(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))

                )
                
                Spacer()

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }.foregroundColor(.white)
                    .font(.system(size: 13))
                })
            }
        }.padding(.vertical, 64)
        .padding(.horizontal, 32)
        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
        
    }
}

extension RegistrationView {
    func loadImage() {
        guard let selectedImage = self.selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
