//
//  DataStore.swift
//  DesignCode
//
//  Created by Ahmed Ramy on 7/29/20.
//  Copyright © 2020 Ahmed Ramy. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPost {(posts) in
            self.posts = posts
        }
    }
}
