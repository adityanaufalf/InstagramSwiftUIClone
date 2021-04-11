//
//  ProfileView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ProfileHeaderView()
                PostGridView()
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
