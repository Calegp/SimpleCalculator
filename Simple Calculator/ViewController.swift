//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Camila Prestes on 22/02/20.
//  Copyright © 2020 Camila Prestes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numpad: Numpad!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        numpad = Numpad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.addSubview(numpad)
        numpad.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numpad.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            numpad.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -12.0),
            numpad.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -44.0),
            numpad.topAnchor.constraint(equalTo: self.view.topAnchor),
        ])
        
        self.view.layoutSubviews()
    }

}

