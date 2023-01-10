//
//  StackTest.swift
//  TddDemoTests
//
//  Created by GGS-BKS on 10/01/23.
//

import XCTest
@testable import TddDemo

final class StackTest: XCTestCase {
    var obj : Stack?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        obj = Stack()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        obj = nil
    }

    func testpush() {
           obj?.push(2)
           XCTAssertEqual(obj?.array.count, 1)
           obj?.push(5)
           XCTAssertEqual(obj?.array.count, 2)
           obj?.push(7)
           XCTAssertEqual(obj?.array.count, 3)
           obj?.push(6)
           XCTAssertEqual(obj?.array.count, 4)
           
       }
       func testPeek(){
           obj?.push(2)
           obj?.push(5)
           obj?.push(3)
           let result = obj?.peek()
           XCTAssertEqual(result,3)
       }
       func testpop(){
           obj?.push(2)
           obj?.push(5)
           obj?.push(3)
           let result = obj?.pop()
           XCTAssertEqual(result,3)
       }


}
