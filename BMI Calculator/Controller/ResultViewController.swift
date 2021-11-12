//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 3.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
