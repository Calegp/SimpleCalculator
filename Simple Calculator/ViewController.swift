//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 22/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var numpad: Numpad!
    private var resultView: ResultView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        numpad = Numpad()
        numpad.delegate = self
        resultView = ResultView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setupResultView()
        setupNumpad()
        
        resultView.content = "0"
        
        self.view.layoutSubviews()
    }
    
    private func setupNumpad(){
        self.view.addSubview(numpad)
        numpad.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numpad.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            numpad.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -12.0),
            numpad.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -44.0),
            numpad.topAnchor.constraint(equalTo: resultView.bottomAnchor)
        ])
    }
    
    private func setupResultView(){
        self.view.addSubview(resultView)
        resultView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resultView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            resultView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            resultView.topAnchor.constraint(equalTo: self.view.topAnchor),
            resultView.heightAnchor.constraint(equalToConstant: 200.0)
        ])
    }

}

extension ViewController: NumpadDelegate {
    func calculate() {
        guard let result = resultView.content else { return () }
        let mathExpression = NSExpression(format: result)
        let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int
        resultView.content = "\(mathValue ?? 0)"
        print(mathValue!)
    }
    
    func chooseNumber(number: String) {
        if resultView.content == "0" {
            clear()
        }
        resultView.content! += number
    }
    
    func clear() {
        resultView.content = ""
    }
    
    
}

