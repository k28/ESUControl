//
//  ESUSegmentedControl.swift
//  ESUControl
//
//  Created by K.Hatano on 2021/01/09.
//

import UIKit

open class ESUSegmentedControl: UISegmentedControl {
    
    open var onValueChanged: ((_ index: Int) -> Void) = { _ in }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public override init(items: [Any]?) {
        super.init(items: items)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.addTarget(self, action: #selector(valueChanged), for: UIControl.Event.valueChanged)
    }
    
    @objc func valueChanged() {
        self.onValueChanged(selectedSegmentIndex)
    }
}
