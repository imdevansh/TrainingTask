//
//  NewModel.swift
//  HackerNewsInTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import Foundation
struct NewModel : Decodable{
    var hits: [Hits]
}
struct Hits:Decodable {
    var title: String
    var url: String?
    var points: Int
}
