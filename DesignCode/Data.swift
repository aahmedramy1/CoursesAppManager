//
//  Data.swift
//  DesignCode
//
//  Created by Ahmed Ramy on 7/28/20.
//  Copyright © 2020 Ahmed Ramy. All rights reserved.
//

import SwiftUI

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

class Api {
    func getPost(completion: @escaping ([Post]) -> () )  {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let posts = try! JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}