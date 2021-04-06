//
//  MainTabView.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 05/04/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                
                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                
                NotificationView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }.accentColor(.black)
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading: Text("Logout")
                                    .accentColor(.blue),
                                trailing:
                                    Image(systemName: "paperplane")
                                    .imageScale(.large)
                                    .foregroundColor(.gray)
            )
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
