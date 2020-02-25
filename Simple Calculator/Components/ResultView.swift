//
//  ResultView.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 23/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

class ResultView: UIView {
    var content: String?
    private var resultLabel: UILabel!
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel() {
        resultLabel = UILabel(frame: .zero)
    }
    
}
