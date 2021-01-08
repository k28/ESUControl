//
//  ESUDatePickerTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUDatePickerTests: XCTestCase {

    func makeTestClass() -> ESUDatePicker {
        return ESUDatePicker()
    }
    
    func testOnValueChanged() {
        let control = makeTestClass()
        var selectedDate = Date()
        control.onValueChanged = { date in
            selectedDate = date
        }
        control.date = Date(timeIntervalSince1970: 123)
        control.valueChanged()
        XCTAssertEqual(control.date, selectedDate)
    }
}
