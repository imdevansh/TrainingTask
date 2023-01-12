//
//  ApiManager.swift
//  HackerNewsInTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import Foundation
class ApiManager{
    func getNewsFrom(url:String, closure: @escaping(NewModel) -> ()){
        let serverURL = URL(string: url)
        guard let serverURL = URL(string: url) else {
            print("Server url is not correct.")
            return
        }
        URLSession.shared.dataTask(with: URLRequest(url: serverURL)) { data, response, error in
            if error != nil {
                print("Unable to ferch data from server")
                return
            }
            
            //convert data into model
            do {
                let hackerNewsList = try JSONDecoder()
                .decode(NewModel.self, from: data!)
                closure(hackerNewsList)
            }catch{
                print(error)
            }
        }.resume()
    }
}
