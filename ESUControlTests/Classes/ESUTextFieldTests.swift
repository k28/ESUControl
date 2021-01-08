//
//  ESUTextFieldTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUTextFieldTests: XCTestCase {

    func makeTestClass() -> ESUTextField {
        return ESUTextField()
    }
    
    func testOnEditingChanged() {
        let control = makeTestClass()
        var value = ""
        control.onEditingChanged = { val in
            val = val.uppercased()
        }
        control.onEditingDidEnd = { val in
            value = val
        }
        control.text = "hello"
        control.editingChanged()
        control.editingDidEnd()
        XCTAssertEqual("HELLO", value)
    }
    
    func testOnEditingDidEnd() {
        let control = makeTestClass()
        var value = ""
        control.onEditingDidEnd = { val in
            value = val
        }
        control.text = "A problem is a chance for you to do your best."
        control.editingDidEnd()
        XCTAssertEqual(control.text, value)
    }

}
