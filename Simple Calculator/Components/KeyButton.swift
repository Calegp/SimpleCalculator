//
//  KeyButton.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 22/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

enum KeyColor {
    case primary
    case secondary
    case tertiary
}

class KeyButton: UIButton {
    init(frame: CGRect, color: KeyColor, text: String) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        
        var backgroundColor: UIColor = .systemGray
        
        self.titleLabel?.font = .boldSystemFont(ofSize: 20)
        
        switch color {
        case .primary:
            backgroundColor = #colorLiteral(red: 0.9844431281, green: 0.9844661355, blue: 0.9844536185, alpha: 1)
            self.setTitleColor(#colorLiteral(red: 0.4401171207, green: 0.4401280284, blue: 0.4401221871, alpha: 1), for: .normal)
        case .secondary:
            backgroundColor = #colorLiteral(red: 0.9393939376, green: 0.9801698327, blue: 0.9688534141, alpha: 1)
            self.setTitleColor(#colorLiteral(red: 0.4235294118, green: 0.7803921569, blue: 0.662745098, alpha: 1), for: .normal)
        case .tertiary:
            backgroundColor = #colorLiteral(red: 0.980463922, green: 0.885389626, blue: 0.8957205415, alpha: 1)
            self.setTitleColor(#colorLiteral(red: 0.8196078431, green: 0.262745098, blue: 0.3490196078, alpha: 1), for: .normal)
        }
        
        self.backgroundColor = backgroundColor
        self.setTitle(text, for: .normal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
