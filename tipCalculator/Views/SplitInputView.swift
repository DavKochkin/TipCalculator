//
//  SplitInputView.swift
//  tipCalculator
//
//  Created by David Kochkin on 10.02.2024.
//

import UIKit

class SplitInputView: UIView {
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .orange
    }
}