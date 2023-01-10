//
//  Calculator.swift
//  TddDemo
//
//  Created by GGS-BKS on 09/01/23.
//

import Foundation
struct Calculator {
    func sum(n1:Int?, n2:Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else {
            return nil
        }
        return n1 + n2
    }
    func sub(n1:Int?, n2:Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else {
            return nil
        }
        return n1 - n2
    }
    func mul(n1:Int?, n2:Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else {
            return nil
        }
        return n1 * n2
    }
    func div(n1:Int?, n2:Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else {
            return nil
        }
        return n1 / n2
    }
}
