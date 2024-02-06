//
//  ContentView.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var postsManager = PostsManager()
    
    var body: some View {
        NavigationStack {
            List(postsManager.posts) { post in
                if post.url != nil {
                    NavigationLink(destination: DetailView(url: post.url, title: post.title)) {
                        PostListItemView(point: String(post.points), title: post.title, author: post.author, numberOfComments: post.num_comments)
                    }
                } else {
                    PostListItemView(point: String(post.points), title: post.title, author: post.author, numberOfComments: post.num_comments)
                }
            }
            .navigationTitle("Haker News")
        }
        .onAppear(perform: {
            self.postsManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
