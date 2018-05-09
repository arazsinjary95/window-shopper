//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Araz Sinjary on 5/9/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    //here we create func we want to so is run some tests to make sure that our code is actually working correctly. if your func not available go to this model file and active testing.
    func testGetHours() {
        XCTAssert(wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
        //proTip: always run(and pass) your unit tests befor you: 1- create pull request 2- deploy ro decive 3- send app to beta testers 4- submit to app store!!!
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
