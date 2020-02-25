//
//  ResultView.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 23/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

class ResultView: UIView {
    var content: String? {
        didSet{
            resultLabel.text = self.content
        }
    }
    private var resultLabel: UILabel!
    
    init() {
        super.init(frame: .zero)
        setupLabel()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel() {
        resultLabel = UILabel(frame: .zero)
        
        resultLabel.font = .boldSystemFont(ofSize: 58.0)
        resultLabel.textAlignment = .right
        
        addSubview(resultLabel)
    }
    
    private func setupConstraints() {
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resultLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12.0),
            resultLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12.0),
            resultLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8.0),
            resultLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8.0),
        ])
        
    }
    
}
