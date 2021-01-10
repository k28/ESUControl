//
//  ViewController.swift
//  ESUControlSample
//
//  Created by K.Hatano on 2021/01/10.
//

import UIKit
import ESUControl

class ViewController: UIViewController {
    
    @IBOutlet weak var esuButton_: ESUButton!
    @IBOutlet weak var esuTextField_: ESUTextField!
    @IBOutlet weak var esuDatePicker_: ESUDatePicker!
    
    static let ButtonIdentifier = "ESUBUTTON"
    static let TextFieldIdentifier = "ESUTextFieldIdentifier"
    static let DatePickerIdentifier = "ESUDatePickerIdentifier"
    
    var esuButtonPushed = false
    var currentDate = Date()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupIdentifier()
        setup()
    }
    
    private func setupIdentifier () {
        esuButton_.accessibilityIdentifier = ViewController.ButtonIdentifier
        esuTextField_.accessibilityIdentifier = ViewController.TextFieldIdentifier
        esuDatePicker_.accessibilityIdentifier = ViewController.DatePickerIdentifier
    }

    private func setup() {
        esuButton_.onTouchUpInside = { [weak self] in
            self?.esuButtonPushed = true
        }
        esuTextField_.onEditingChanged = { val in
            val = val.uppercased()
        }
        
        esuDatePicker_.onValueChanged = { [weak self] val in
            NSLog("esuDatePicker_onValueChanged \(val)")
            self?.currentDate = val
        }
        
    }

}

