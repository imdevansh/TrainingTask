//
//  ViewModel.swift
//  HackerNewsInTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import Foundation
class ViewModel {
    var hitsArray : [Hits]? = []
    func getNewsFrom(url:String, closure: @escaping() -> ()){
        ApiManager().getNewsFrom(url: SERVER., closure: <#T##(NewModel) -> ()#>)
    }
}
