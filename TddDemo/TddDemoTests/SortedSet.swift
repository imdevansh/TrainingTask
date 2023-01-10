//
//  SortedSet.swift
//  TddDemoTests
//
//  Created by GGS-BKS on 09/01/23.
//

import XCTest
@testable import TddDemo

final class SortedSet: XCTestCase {
    
    /*
     PROBEM STATEMENT
     You have an array :
     condition: 1. it should not allow duplicate element
     2. Everytime you insert it, array items should not fall ascending order
     
     1. addElement
     2.addAll
     3. max
     4. min
     5. deleteItemFromIndex -> -1 ,0 -->>
     6. isExist
     
     */
    var sortedObj:ArrayProblem?
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sortedObj = ArrayProblem()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sortedObj = nil
    }
    func testAddElement(){
        sortedObj?.addElement(n1: 2)
        XCTAssertEqual(sortedObj?.numbers.count, 1)
        
        sortedObj?.addElement(n1: 3)
        XCTAssertEqual(sortedObj?.numbers.count,2)
        
        sortedObj?.addElement(n1: 4)
        XCTAssertEqual(sortedObj?.numbers.first,2)
    }
    func testaddAll(){
        let result = sortedObj?.addAll(numbers: [1,2,3,4])
        XCTAssertEqual(result, 10)

        
    }
    func testMax(){
        let result = sortedObj?.max(numbers: [1,2,3,4,5,6])
        XCTAssertEqual(result, 6)
    }

    func testMin(){
        let result = sortedObj?.min(numbers: [1,2,3,4,5,6])
        XCTAssertEqual(result, 1)
    }
    func testDeleteFromIndex(){
        sortedObj?.deleteFromIndex(index: 2)
        XCTAssertEqual(sortedObj?.numbers.count, 3)
    }
    func testIsexiste(){
        let result = sortedObj?.isExist(element: 2)
        XCTAssertEqual(result, true)
    }

}
