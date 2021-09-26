//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.9.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format:"%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format:"%.0f", sender.value) + "kg"
    }
}

