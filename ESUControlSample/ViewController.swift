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
    
    static let ButtonIdentifier = "ESUBUTTON"
    
    var esuButtonPushed = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupIdentifier()
        setup()
    }
    
    private func setupIdentifier () {
        esuButton_.accessibilityIdentifier = ViewController.ButtonIdentifier
    }

    private func setup() {
        esuButton_.onTouchUpInside = { [weak self] in
            self?.esuButtonPushed = true
        }
        esuButton_.onTouchDown = {
            NSLog("onTouchDown")
        }
    }

}

