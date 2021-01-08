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
    
    func testOnTouchDownRepeat() {
        let button = makeTestClass()
        var called = false
        button.onTouchDownRepeat = {
            called = true
        }
        button.touchDownRepeat()
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchDragInside() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragInside = {
            called = true
        }
        button.touchDragInside()
        XCTAssertEqual(true, called)
    }
    
    func testOnDragOutside() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragOutside = {
            called = true
        }
        button.touchDragOutside()
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchDragExit() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragExit = {
            called = true
        }
        button.touchDragExit()
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchUpInside() {
        let button = makeTestClass()
        var called = false
        button.onTouchUpInside = {
            called = true
        }
        button.touchUpInside()
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchUpOutside() {
        let button = makeTestClass()
        var called = false
        button.onTouchUpOutside = {
            called = true
        }
        button.touchUpOutside()
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchCancel() {
        let button = makeTestClass()
        var called = false
        button.onTouchCancel = {
            called = true
        }
        button.touchCancel()
        XCTAssertEqual(true, called)
    }

}
