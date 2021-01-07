//
//  ESUButtonTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/08.
//

import XCTest
@testable import ESUControl

class ESUButtonTests: XCTestCase {

    func makeTestClass() -> ESUButton {
        return ESUButton()
    }
    
    func testOnTouhchDown() {
        let button = makeTestClass()
        var called = false
        button.onTouchDown = {
            called = true
        }
        
        button.touchDown()
        XCTAssertEqual(true, called)
    }

}
