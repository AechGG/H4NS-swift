//
//  ContentView.swift
//  H4NS
//
//  Created by Harrison Gittos on 19/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager();
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { (post) in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4NS")
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
