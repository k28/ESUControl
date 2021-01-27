//
//  ESUTextViewTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/28.
//

import XCTest
@testable import ESUControl

class ESUTextViewTests: XCTestCase {

    func makeTestClass() -> ESUTextView {
        return ESUTextView()
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
    

}
