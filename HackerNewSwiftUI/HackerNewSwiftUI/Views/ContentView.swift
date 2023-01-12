//
//  ContentView.swift
//  HackerNewSwiftUI
//
//  Created by GGS-BKS on 11/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetwokManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

