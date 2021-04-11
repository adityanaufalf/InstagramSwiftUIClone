//
//  UserGridView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 08/04/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0 ..< 10) { item in
                UserCellView()
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
