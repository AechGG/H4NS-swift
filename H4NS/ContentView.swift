//
//  ContentView.swift
//  H4NS
//
//  Created by Harrison Gittos on 19/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { (post) in
                Text(post.title)
            }
            .navigationBarTitle("H4NS")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "world"),
    Post(id: "3", title: "!!!")
]
