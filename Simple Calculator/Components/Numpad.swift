//
//  Numpad.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 22/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

class Numpad: UIView {
    var buttonClear: KeyButton!
    var buttonSummation: KeyButton!
    var buttonPercent: KeyButton!
    var buttonDivide: KeyButton!
    var buttonMultiply: KeyButton!
    var buttonMinus: KeyButton!
    var buttonPlus: KeyButton!
    var buttonResult: KeyButton!
    var button0: KeyButton!
    var button1: KeyButton!
    var button2: KeyButton!
    var button3: KeyButton!
    var button4: KeyButton!
    var button5: KeyButton!
    var button6: KeyButton!
    var button7: KeyButton!
    var button8: KeyButton!
    var button9: KeyButton!
    var buttonDot: KeyButton!
    
    init() {
        super.init(frame: .zero)
        
        setupButtons()
        setupConstraints()
        
        self.layoutSubviews()
    }
    
    private func setupButtons() {
        buttonClear = KeyButton(frame: .zero, color: .secondary, text: "C")
        buttonSummation = KeyButton(frame: .zero, color: .secondary, text: "+/-")
        buttonPercent = KeyButton(frame: .zero, color: .secondary, text: "%")
        buttonDivide = KeyButton(frame: .zero, color: .secondary, text: "/")
        buttonMultiply = KeyButton(frame: .zero, color: .secondary, text: "x")
        buttonMinus = KeyButton(frame: .zero, color: .secondary, text: "-")
        buttonPlus = KeyButton(frame: .zero, color: .secondary, text: "+")
        buttonResult = KeyButton(frame: .zero, color: .tertiary, text: "=")
        button0 = KeyButton(frame: .zero, color: .primary, text: "0")
        button1 = KeyButton(frame: .zero, color: .primary, text: "1")
        button2 = KeyButton(frame: .zero, color: .primary, text: "2")
        button3 = KeyButton(frame: .zero, color: .primary, text: "3")
        button4 = KeyButton(frame: .zero, color: .primary, text: "4")
        button5 = KeyButton(frame: .zero, color: .primary, text: "5")
        button6 = KeyButton(frame: .zero, color: .primary, text: "6")
        button7 = KeyButton(frame: .zero, color: .primary, text: "7")
        button8 = KeyButton(frame: .zero, color: .primary, text: "8")
        button9 = KeyButton(frame: .zero, color: .primary, text: "9")
        buttonDot = KeyButton(frame: .zero, color: .primary, text: ".")
        
        self.addSubviews(views: [buttonClear, buttonSummation, buttonPercent, buttonDivide, buttonMultiply, buttonMinus, buttonPlus, buttonResult])
        
        self.addSubviews(views: [button0, button1, button2, button3, button4, button5, button6, button7, button8, button9, buttonDot])
    }
    
    private func setupConstraints() {
        let buttonSize: CGFloat = 84.0
        let spacing: CGFloat = 12.0
        
        buttonResult.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonResult.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonResult.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonResult.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -spacing),
            buttonResult.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -spacing)
        ])
        
        buttonDot.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonDot.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonDot.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonDot.trailingAnchor.constraint(equalTo: buttonResult.leadingAnchor, constant: -12.0),
            buttonDot.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -spacing)
        ])
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button0.widthAnchor.constraint(equalToConstant: (buttonSize * 2) + 12),
            button0.heightAnchor.constraint(equalToConstant: buttonSize),
            button0.trailingAnchor.constraint(equalTo: buttonDot.leadingAnchor, constant: -spacing),
            button0.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -spacing)
        ])
        
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   buttonPlus.widthAnchor.constraint(equalToConstant: buttonSize),
                   buttonPlus.heightAnchor.constraint(equalToConstant: buttonSize),
                   buttonPlus.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -spacing),
                   buttonPlus.bottomAnchor.constraint(equalTo: buttonResult.topAnchor, constant: -spacing)
               ])
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button3.widthAnchor.constraint(equalToConstant: buttonSize),
            button3.heightAnchor.constraint(equalToConstant: buttonSize),
            button3.trailingAnchor.constraint(equalTo: buttonPlus.leadingAnchor, constant: -spacing),
            button3.bottomAnchor.constraint(equalTo: buttonDot.topAnchor, constant: -spacing)
        ])
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button2.widthAnchor.constraint(equalToConstant: buttonSize),
            button2.heightAnchor.constraint(equalToConstant: buttonSize),
            button2.trailingAnchor.constraint(equalTo: button3.leadingAnchor, constant: -spacing),
            button2.bottomAnchor.constraint(equalTo: button0.topAnchor, constant: -spacing)
        ])
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button1.widthAnchor.constraint(equalToConstant: buttonSize),
            button1.heightAnchor.constraint(equalToConstant: buttonSize),
            button1.trailingAnchor.constraint(equalTo: button2.leadingAnchor, constant: -spacing),
            button1.bottomAnchor.constraint(equalTo: button0.topAnchor, constant: -spacing)
        ])
        
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonMinus.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonMinus.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonMinus.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -spacing),
            buttonMinus.bottomAnchor.constraint(equalTo: buttonPlus.topAnchor, constant: -spacing)
        ])
        
        button6.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   button6.widthAnchor.constraint(equalToConstant: buttonSize),
                   button6.heightAnchor.constraint(equalToConstant: buttonSize),
                   button6.trailingAnchor.constraint(equalTo: buttonMinus.leadingAnchor, constant: -spacing),
                   button6.bottomAnchor.constraint(equalTo: button3.topAnchor, constant: -spacing)
               ])
        
        button5.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   button5.widthAnchor.constraint(equalToConstant: buttonSize),
                   button5.heightAnchor.constraint(equalToConstant: buttonSize),
                   button5.trailingAnchor.constraint(equalTo: button6.leadingAnchor, constant: -spacing),
                   button5.bottomAnchor.constraint(equalTo: button2.topAnchor, constant: -spacing)
               ])
        
        button4.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button4.widthAnchor.constraint(equalToConstant: buttonSize),
            button4.heightAnchor.constraint(equalToConstant: buttonSize),
            button4.trailingAnchor.constraint(equalTo: button5.leadingAnchor, constant: -spacing),
            button4.bottomAnchor.constraint(equalTo: button1.topAnchor, constant: -spacing)
        ])
        
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonMultiply.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonMultiply.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonMultiply.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -spacing),
            buttonMultiply.bottomAnchor.constraint(equalTo: buttonMinus.topAnchor, constant: -spacing)
        ])
        
        button9.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button9.widthAnchor.constraint(equalToConstant: buttonSize),
            button9.heightAnchor.constraint(equalToConstant: buttonSize),
            button9.trailingAnchor.constraint(equalTo: buttonMultiply.leadingAnchor, constant: -spacing),
            button9.bottomAnchor.constraint(equalTo: button6.topAnchor, constant: -spacing)
        ])
        
        button8.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button8.widthAnchor.constraint(equalToConstant: buttonSize),
            button8.heightAnchor.constraint(equalToConstant: buttonSize),
            button8.trailingAnchor.constraint(equalTo: button9.leadingAnchor, constant: -spacing),
            button8.bottomAnchor.constraint(equalTo: button5.topAnchor, constant: -spacing)
        ])
        
        button7.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button7.widthAnchor.constraint(equalToConstant: buttonSize),
            button7.heightAnchor.constraint(equalToConstant: buttonSize),
            button7.trailingAnchor.constraint(equalTo: button8.leadingAnchor, constant: -spacing),
            button7.bottomAnchor.constraint(equalTo: button4.topAnchor, constant: -spacing)
        ])
        
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonDivide.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonDivide.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonDivide.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -spacing),
            buttonDivide.bottomAnchor.constraint(equalTo: buttonMultiply.topAnchor, constant: -spacing)
        ])
        
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonPercent.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonPercent.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonPercent.trailingAnchor.constraint(equalTo: buttonDivide.leadingAnchor, constant: -spacing),
            buttonPercent.bottomAnchor.constraint(equalTo: button9.topAnchor, constant: -spacing)
        ])
        
        buttonSummation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonSummation.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonSummation.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonSummation.trailingAnchor.constraint(equalTo: buttonPercent.leadingAnchor, constant: -spacing),
            buttonSummation.bottomAnchor.constraint(equalTo: button8.topAnchor, constant: -spacing)
        ])
        
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonClear.widthAnchor.constraint(equalToConstant: buttonSize),
            buttonClear.heightAnchor.constraint(equalToConstant: buttonSize),
            buttonClear.trailingAnchor.constraint(equalTo: buttonSummation.leadingAnchor, constant: -spacing),
            buttonClear.bottomAnchor.constraint(equalTo: button7.topAnchor, constant: -spacing)
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    func addSubviews(views: [UIView]){
        _ = views.map {
            addSubview($0)
        }
    }
}
