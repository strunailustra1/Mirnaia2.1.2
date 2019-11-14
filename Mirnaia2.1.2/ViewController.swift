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
    
    private let lightsOff: CGFloat = 0.3
    private let lightsOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redLight.alpha = lightsOff
        yellowLight.alpha = lightsOff
        greenLight.alpha = lightsOff
        
        controlButton.layer.cornerRadius = 10
    }
    
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    @IBAction func buttonPressed() {
        controlButton.setTitle("NEXT", for: .normal)
        currentState += 1
        switch currentState % 3 {
        case 1:
            greenLight.alpha = lightsOff
            redLight.alpha = lightsOn
        case 2:
            redLight.alpha = lightsOff
            yellowLight.alpha = lightsOn
        case 0:
            yellowLight.alpha = lightsOff
            greenLight.alpha = lightsOn
        default:
            break
        }
        
    }
}

