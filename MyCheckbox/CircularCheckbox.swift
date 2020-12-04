//
//  CircularCheckbox.swift
//  MyCheckbox
//
//  Created by Hasan Ali Şişeci on 4.12.2020.
//

import UIKit

final class CircularCheckbox: UIView {
    
    var isChecked : Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.1
        layer.borderColor = UIColor.label.cgColor
        layer.cornerRadius = frame.size.width / 2.0
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func toggle() {
        self.isChecked = !isChecked
        if self.isChecked {
            backgroundColor = .systemRed
        } else {
            backgroundColor = .systemBackground
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        layer.borderColor = UIColor.label.cgColor
        
    }
}
