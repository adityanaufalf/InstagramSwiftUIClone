//
//  NotificationView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack(spacing: 0) {
                ForEach(0 ..< 20) { item in
                    NotificationCell()
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
