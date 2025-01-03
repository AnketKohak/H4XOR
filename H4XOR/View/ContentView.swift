//
//  ContentView.swift
//  H4XOR
//
//  Created by Anket Kohak on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject  var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            
            
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailedView(url:post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                    
                
                
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts=[Post(id: "1", title: "hi"),
//          Post(id: "2", title: "halo"),
//          Post(id: "3", title: "banjaur")
//
//]
