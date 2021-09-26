//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.9.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
}

