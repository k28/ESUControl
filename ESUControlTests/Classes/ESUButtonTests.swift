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
        button.sendActions(for: .touchDown)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchDownRepeat() {
        let button = makeTestClass()
        var called = false
        button.onTouchDownRepeat = {
            called = true
        }
        button.sendActions(for: .touchDownRepeat)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchDragInside() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragInside = {
            called = true
        }
        button.sendActions(for: .touchDragInside)
        XCTAssertEqual(true, called)
    }
    
    func testOnDragOutside() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragOutside = {
            called = true
        }
        button.sendActions(for: .touchDragOutside)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchDragExit() {
        let button = makeTestClass()
        var called = false
        button.onTouchDragExit = {
            called = true
        }
        button.sendActions(for: .touchDragExit)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchUpInside() {
        let button = makeTestClass()
        var called = false
        button.onTouchUpInside = {
            called = true
        }
        button.sendActions(for: .touchUpInside)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchUpOutside() {
        let button = makeTestClass()
        var called = false
        button.onTouchUpOutside = {
            called = true
        }
        button.sendActions(for: .touchUpOutside)
        XCTAssertEqual(true, called)
    }
    
    func testOnTouchCancel() {
        let button = makeTestClass()
        var called = false
        button.onTouchCancel = {
            called = true
        }
        button.sendActions(for: .touchCancel)
        XCTAssertEqual(true, called)
    }

}
