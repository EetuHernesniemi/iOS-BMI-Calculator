//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 3.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor ?? UIColor.init(red: 255, green: 38, blue: 0, alpha: 0)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
