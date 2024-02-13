//
//  HeaderView.swift
//  tipCalculator
//
//  Created by David Kochkin on 11.02.2024.
//

import UIKit

class HeaderView: UIView {
    
    private let topLabel: UILabel = {
        LabelFactory.buil(text: nil, font: ThemeFont.bold(ofSize: 18))
    }()
    
    private let bottomlabel: UILabel = {
        LabelFactory.buil(text: nil, font: ThemeFont.regular(ofSize: 16))
    }()
    
    private let topSpacerView    = UIView()
    private let bottomSpacerView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
        topSpacerView,
        topLabel,
        bottomlabel,
        bottomSpacerView
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = -4
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        topSpacerView.snp.makeConstraints { make in
            make.height.equalTo(bottomSpacerView)
        }
    }
    
    func configure(topText: String, bottomText: String) {
        topLabel.text = topText
        bottomlabel.text = bottomText
    }
}

