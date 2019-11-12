//
//  ViewController.swift
//  Mirnaia2.1.2
//
//  Created by Наталья Мирная on 12/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var controlButton: UIButton!
    var currentState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = 77
        yellowLight.layer.cornerRadius = 77
        greenLight.layer.cornerRadius = 77
        controlButton.layer.cornerRadius = 10
    }
    
    @IBAction func buttonPressed() {
        controlButton.setTitle("NEXT", for: .normal)
        currentState += 1
        switch currentState % 3 {
        case 1:
            greenLight.alpha = 0.3
            redLight.alpha = 1
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case 0:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        default:
            break
        }
        
    }
}

