//
//  NetworkManager.swift
//  H4NS
//
//  Created by Harrison Gittos on 19/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default);
            let task = session.dataTask(with: url) { (data, response, error) in
                if let e = error {
                    print(e);
                } else {
                    let decoder = JSONDecoder();
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData);
                        } catch {
                            print(error);
                        }
                    }
                    
                }
            }
            
            task.resume();
        }
    }
}
