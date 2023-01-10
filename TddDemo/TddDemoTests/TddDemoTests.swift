//
//  TddDemoTests.swift
//  TddDemoTests
//
//  Created by GGS-BKS on 09/01/23.
//

import XCTest
@testable import TddDemo

final class TddDemoTests: XCTestCase {
    var objCalculator : Calculator?
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objCalculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objCalculator = nil
    }
    func testSum(){
        let resultSum = objCalculator?.sum(n1: 1, n2: 2)
        XCTAssertEqual(resultSum, 3)
        
        let resultNil = objCalculator?.sum(n1: nil, n2: nil)
        XCTAssertEqual(resultNil, nil)
        
        let result = objCalculator?.sum(n1: 2, n2: nil)
        XCTAssertEqual(result, nil)
    }

    func testSub(){
        let resultSum = objCalculator?.sub(n1: 1, n2: 2)
        XCTAssertEqual(resultSum, -1)
        
        let resultNil = objCalculator?.sub(n1: nil, n2: nil)
        XCTAssertEqual(resultNil, nil)
        
        let result = objCalculator?.sub(n1: 2, n2: nil)
        XCTAssertEqual(result, nil)
    }
    
    func testMul(){
        let resultSum = objCalculator?.mul(n1: 1, n2: 2)
        XCTAssertEqual(resultSum, 2)
        
        let resultNil = objCalculator?.mul(n1: nil, n2: nil)
        XCTAssertEqual(resultNil, nil)
        
        let result = objCalculator?.mul(n1: 2, n2: nil)
        XCTAssertEqual(result, nil)
    }
    
    func testDiv(){
        let resultSum = objCalculator?.div(n1: 4, n2: 2)
        XCTAssertEqual(resultSum, 2)
        
        let resultNil = objCalculator?.div(n1: nil, n2: nil)
        XCTAssertEqual(resultNil, nil)
        
        let result = objCalculator?.div(n1: 2, n2: nil)
        XCTAssertEqual(result, nil)
    }

}
