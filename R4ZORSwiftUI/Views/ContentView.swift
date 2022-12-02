//
//  ContentView.swift
//  R4ZORSwiftUI
//
//  Created by doc on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager = FetchManager()
    
    var body: some View {
        NavigationView {
            List(manager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)") .padding(.horizontal)
                        Text(post.title) .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("R4ZOR")
        }
        .onAppear(perform: {
            self.manager.fetchData()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
