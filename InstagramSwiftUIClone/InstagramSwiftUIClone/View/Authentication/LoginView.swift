//
//  LoginView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 14/04/21.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 54) {
                    Image("ico-instagram")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 86, height: 86, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .center, spacing: 16) {
                        CustomEditText(text: $emailText, placeholder: "Email", imageName: "envelope")
                            .padding()
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(6)
                            .foregroundColor(.white)
                        
                        CustomSecureEditText(text: $passwordText, placeholder: "Password", imageName: "lock")
                            .padding()
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(6)
                            .foregroundColor(.white)
                        
                        
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Forgot Password?")
                                    .font(.system(size: 13, weight: .semibold))
                                    .foregroundColor(.white)
                            }).padding(.vertical, 8)
                            
                        }
                        
                        Button(action: {
                            
                        }, label: {
                            Spacer()
                            Text("Sign In")
                                .foregroundColor(.white)
                            Spacer()
                        }).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                        .font(.headline)
                        .background(
                            Capsule()
                                .fill(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))

                        )
                        
                        Spacer()

                        NavigationLink(
                            destination: RegistrationView().navigationBarBackButtonHidden(true),
                            label: {
                                HStack {
                                    Text("Don't have an account?")
                                    Text("Sign Up")
                                        .fontWeight(.semibold)
                                }.foregroundColor(.white)
                                .font(.system(size: 13))
                            })                    }
                   
                }.padding(.horizontal, 32)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
