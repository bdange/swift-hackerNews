//
//  ContentView.swift
//  Hacker News
//
//  Created by Benjamin Dange on 02/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NewtworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
